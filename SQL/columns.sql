select 
  table_name "Tabela",
  column_name "Coluna",
  data_type || 
  case when
    data_type not in ('DATE')
  then
    '(' || 
    data_length ||
    case when 
      data_precision is not null 
    then 
      ',' || data_precision 
    else 
      null 
    end  
    || ')'     
  else
    null
  end "Tipo de dado",
  decode(nullable, 'Y', 'Não', 'Sim') "Obrigatório",
  null "Descrição"
from 
  user_tab_columns
where
  user_tab_columns.data_default is not null  
order by
  table_name,
  column_id  
