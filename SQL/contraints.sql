select
  cc.table_name "Tabela",
  cc.constraint_name "Constraint",
  decode(c.constraint_type,
    'P', 'Primary Key',
    'U', 'Unique Key',
    'R', 'Foreign Key',
    'C', 'Check Constraint'
  ) "Tipo",
  cc.column_name "Coluna",
  cr.table_name "Tabela Referenciada",
  (
    select
      ccr.column_name
    from
      user_cons_columns ccr
    where
      ccr.constraint_name = cr.constraint_name and
      ccr.position = cc.position
  ) "Coluna Referenciada",
  c.delete_rule "Regra de Exclusão",
  null "Condição de Checagem"
from
  user_constraints cr,
  user_cons_columns cc,
  user_constraints c
where
  c.constraint_name not like 'SYS%' and
  cc.constraint_name = c.constraint_name and
  cr.constraint_name(+) = c.r_constraint_name
order by
  c.table_name,
  decode(c.constraint_type,
    'P', 1,
    'U', 2,
    'R', 3,
    'C', 4
  ),
  c.constraint_name,
  cc.position
  