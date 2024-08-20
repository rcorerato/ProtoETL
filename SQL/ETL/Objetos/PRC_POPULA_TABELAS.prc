create or replace procedure PRC_POPULA_TABELAS
(
  p_proprietario in tabela.proprietario%type
)
is
begin

  pkg_tabela.popula_tabelas(p_proprietario);
  
end PRC_POPULA_TABELAS;
/
