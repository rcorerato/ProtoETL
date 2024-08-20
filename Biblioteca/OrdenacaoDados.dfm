inherited FrmOrdenacaoDados: TFrmOrdenacaoDados
  Left = 442
  Top = 305
  Width = 625
  Height = 423
  Caption = 'Ordena'#231#227'o'
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar: TToolBar
    Width = 617
    Height = 38
    ButtonHeight = 36
    ButtonWidth = 51
    object BtnConfirmar: TToolButton
      Left = 0
      Top = 0
      Action = ActConfirmar
    end
    object BtnCancelar: TToolButton
      Left = 51
      Top = 0
      Action = ActCancelar
    end
  end
  inherited StatusBar: TStatusBar
    Top = 377
    Width = 617
  end
  inherited ScrollBox: TScrollBox
    Top = 38
    Width = 617
    Height = 339
    BorderStyle = bsSingle
    inherited GrpItensDisponiveis: TGroupBox
      Width = 176
      Height = 335
      inherited GrdItensDisponiveis: TStringGrid
        Width = 172
        Height = 318
        ColCount = 1
        DefaultColWidth = 90
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
      end
    end
    inherited PnlCentral: TPanel
      Left = 176
      Height = 335
      inherited BtnInserir: TButton
        Top = 32
      end
      inherited BtnRemover: TButton
        Top = 64
      end
      inherited BtnInserirTudo: TButton
        Top = 128
      end
      inherited BtnRemoverTudo: TButton
        Top = 160
      end
    end
    inherited GrpItensSelecionados: TGroupBox
      Left = 215
      Width = 398
      Height = 335
      inherited GrdItensSelecionados: TStringGrid
        Width = 357
        Height = 318
        ColCount = 2
        DefaultColWidth = 90
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        OnClick = GrdItensSelecionadosClick
      end
      object Panel2: TPanel
        Left = 359
        Top = 15
        Width = 37
        Height = 318
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 1
        object BtnTipoOrdem: TSpeedButton
          Left = 8
          Top = 120
          Width = 23
          Height = 22
          Action = ActTipoOrdem
          Flat = True
          ParentShowHint = False
          ShowHint = True
        end
        object BtnMoverCima: TBitBtn
          Left = 8
          Top = 24
          Width = 23
          Height = 22
          Action = ActMoverCima
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            33333333333333333333333333333333333333FFFFFFFFFFF333330000000000
            3333338888888888F333333000000003333333388888888F3333333300000033
            33333333888888F333333333300003333333333338888F333333333333003333
            333333333388F333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
        object BtnMoverBaixo: TBitBtn
          Left = 8
          Top = 56
          Width = 23
          Height = 22
          Action = ActMoverBaixo
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            0400000000000001000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333F33333333333333003333
            333333333388F33333333333300003333333333338888F333333333300000033
            33333333888888F33333333000000003333333388888888F3333330000000000
            3333338888888888F33333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
        end
      end
    end
  end
  inherited ActionList: TActionList
    object ActMoverBaixo: TAction
      Hint = 'Move item para baixo'
      OnExecute = ActMoverBaixoExecute
    end
    object ActMoverCima: TAction
      Hint = 'Move item para cima'
      OnExecute = ActMoverCimaExecute
    end
    object ActOrdemCrescente: TAction
      Caption = 'Crescente'
      Hint = 'Ordem ascendente'
      OnExecute = ActOrdemCrescenteExecute
    end
    object ActOrdemDecrescente: TAction
      Caption = 'Decrescente'
      Hint = 'Ordem descendente'
      OnExecute = ActOrdemDecrescenteExecute
    end
    object ActTipoOrdem: TAction
      OnExecute = ActTipoOrdemExecute
    end
  end
  object PumItensSelecionados: TPopupMenu
    Left = 136
    Top = 48
    object Crescente1: TMenuItem
      Action = ActOrdemCrescente
    end
    object Decrescente1: TMenuItem
      Action = ActOrdemDecrescente
    end
  end
end
