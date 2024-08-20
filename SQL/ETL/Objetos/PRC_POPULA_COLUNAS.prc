create or replace procedure PRC_POPULA_COLUNAS
(
  p_id_tabela in tabela.id_tabela%type
)
is
begin

  pkg_coluna.popula_colunas(p_id_tabela);
  
end PRC_POPULA_COLUNAS;
/
