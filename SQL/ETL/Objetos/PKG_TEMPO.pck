create or replace package PKG_TEMPO is

  -- Author  : RODRIGO QUEIJA CORERATO
  -- Created : 
  -- Purpose :

  data_inicial   date;
  data_final     date;
  incremento     integer := 1;
  unidade_tempo  char(1) := 'D';
  data_atual     date;

  procedure inicializa;

  procedure proxima_data;

end PKG_TEMPO;
/
create or replace package body PKG_TEMPO is

  procedure inicializa
  is
  begin

    data_atual := data_inicial;

  end;

  procedure proxima_data
  is
  begin

    if unidade_tempo = 'M' then

      data_atual := add_months(data_atual, incremento);

    elsif unidade_tempo = 'A' then

      data_atual := data_atual + (365 * incremento);

    else

      data_atual := data_atual + incremento;

    end if;

  end;

end PKG_TEMPO;
/
