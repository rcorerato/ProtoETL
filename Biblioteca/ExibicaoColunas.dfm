inherited FrmExibicaoColunas: TFrmExibicaoColunas
  Left = 418
  Top = 259
  Width = 310
  Height = 420
  Caption = 'Exibi'#231#227'o de Colunas'
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  inherited ToolBar: TToolBar
    Width = 302
  end
  inherited StatusBar: TStatusBar
    Top = 353
    Width = 302
  end
  inherited ScrollBox: TScrollBox
    Width = 302
    Height = 310
    object CheckListBox: TCheckListBox
      Left = 0
      Top = 0
      Width = 298
      Height = 306
      Align = alClient
      ItemHeight = 16
      PopupMenu = PumCheckListBox
      TabOrder = 0
    end
  end
  inherited MainMenu: TMainMenu
    object Formulrio1: TMenuItem
      Caption = 'Formul'#225'rio'
      object Confirmar1: TMenuItem
        Action = ActConfirmar
      end
      object Cancelar1: TMenuItem
        Action = ActCancelar
      end
    end
    object Lista1: TMenuItem
      Caption = 'Lista'
      object SelecionarTudo1: TMenuItem
        Action = ActSelecionarTudo
      end
      object LimparSeleo1: TMenuItem
        Action = ActLimparSelecao
      end
      object InverterSeleo1: TMenuItem
        Action = ActInverterSelecao
      end
    end
  end
  inherited ActionList: TActionList
    object ActSelecionarTudo: TAction
      Caption = 'Selecionar Tudo'
      OnExecute = ActSelecionarTudoExecute
    end
    object ActLimparSelecao: TAction
      Caption = 'Limpar Sele'#231#227'o'
      OnExecute = ActLimparSelecaoExecute
    end
    object ActInverterSelecao: TAction
      Caption = 'Inverter Sele'#231#227'o'
      OnExecute = ActInverterSelecaoExecute
    end
  end
  object PumCheckListBox: TPopupMenu
    Left = 136
    Top = 48
    object SelecionarTudo2: TMenuItem
      Action = ActSelecionarTudo
    end
    object LimparSeleo2: TMenuItem
      Action = ActLimparSelecao
    end
    object InverterSeleo2: TMenuItem
      Action = ActInverterSelecao
    end
  end
end
