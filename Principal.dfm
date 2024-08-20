inherited FrmPrincipal: TFrmPrincipal
  Left = 209
  Top = 189
  Caption = 'ProtoETL'
  ClientWidth = 706
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar: TToolBar
    Width = 706
  end
  inherited StatusBar: TStatusBar
    Width = 706
  end
  inherited ScrollBox: TScrollBox
    Width = 706
    inherited Image: TImage
      Width = 706
    end
  end
  inherited MainMenu: TMainMenu
    object ProcessoETL1: TMenuItem
      Caption = 'Processo ETL'
      GroupIndex = 1
      object Mapeamentos1: TMenuItem
        Caption = 'Mapeamentos'
        OnClick = Mapeamentos1Click
      end
      object Filtros1: TMenuItem
        Caption = 'Filtros'
        OnClick = Filtros1Click
      end
      object ransformaes1: TMenuItem
        Caption = 'Transforma'#231#245'es'
        OnClick = ransformaes1Click
      end
      object Processos1: TMenuItem
        Caption = 'Processos'
        OnClick = Processos1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object ServidordeProcessos1: TMenuItem
        Caption = 'Servidor de Processos'
        OnClick = ServidordeProcessos1Click
      end
    end
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      GroupIndex = 1
      object abelas1: TMenuItem
        Caption = 'Tabelas'
        OnClick = abelas1Click
      end
      object Colunas1: TMenuItem
        Caption = 'Colunas'
        OnClick = Colunas1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Junes1: TMenuItem
        Caption = 'Jun'#231#245'es'
        OnClick = Junes1Click
      end
    end
    object Consultas1: TMenuItem
      Caption = 'Consultas'
      GroupIndex = 1
      object Processamentos1: TMenuItem
        Caption = 'Processamentos'
        OnClick = Processamentos1Click
      end
    end
    object Ferramentas1: TMenuItem
      Caption = 'Ferramentas'
      GroupIndex = 1
      object LimpezadeProcessamentos1: TMenuItem
        Caption = 'Limpeza de Processamentos'
        OnClick = LimpezadeProcessamentos1Click
      end
    end
  end
end
