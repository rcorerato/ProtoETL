inherited FrmProcessamento: TFrmProcessamento
  Caption = 'Processamentos'
  ClientHeight = 559
  ClientWidth = 745
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar: TToolBar
    Width = 745
  end
  inherited StatusBar: TStatusBar
    Top = 540
    Width = 745
  end
  inherited ScrollBox: TScrollBox
    Width = 745
    Height = 469
    inherited PageControl: TPageControl
      Width = 672
      Height = 445
      inherited TabPesquisa: TTabSheet
        inherited Bevel2: TBevel
          Width = 664
          Height = 419
        end
        object Label5: TLabel
          Left = 8
          Top = 8
          Width = 44
          Height = 13
          Caption = 'Processo'
          FocusControl = EdtPesquisaNome_Processo
        end
        object EdtPesquisaNome_Processo: TEdit
          Left = 8
          Top = 24
          Width = 267
          Height = 21
          TabOrder = 0
        end
      end
      inherited TabTabela: TTabSheet
        inherited DBGrid: TDBGrid
          Width = 664
          Height = 386
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME_PROCESSO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DAT_INICIO'
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DAT_TERMINO'
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD_REGISTROS'
              Width = 92
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD_REGISTROS_ERRO'
              Width = 120
              Visible = True
            end>
        end
        inherited PnlDetalhe: TPanel
          Top = 386
          Width = 664
        end
      end
      inherited TabRegistro: TTabSheet
        inherited TlbRegistro: TToolBar
          Top = 395
          Width = 664
        end
        inherited PnlRegistro: TPanel
          Width = 664
          Height = 395
          inherited PnlRegistroSuperior: TPanel
            Width = 664
            Height = 97
            object Label1: TLabel
              Left = 8
              Top = 8
              Width = 44
              Height = 13
              Caption = 'Processo'
              FocusControl = DBEdtNome_Processo
            end
            object Label2: TLabel
              Left = 8
              Top = 48
              Width = 27
              Height = 13
              Caption = 'In'#237'cio'
              FocusControl = DBEdtDat_Inicio
            end
            object Label4: TLabel
              Left = 112
              Top = 48
              Width = 38
              Height = 13
              Caption = 'T'#233'rmino'
              FocusControl = DBEdtDat_Termino
            end
            object DBEdtNome_Processo: TDBEdit
              Left = 8
              Top = 24
              Width = 393
              Height = 21
              TabStop = False
              Color = clInfoBk
              DataField = 'NOME_PROCESSO'
              DataSource = DataSource
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdtDat_Inicio: TDBEdit
              Left = 8
              Top = 64
              Width = 91
              Height = 21
              TabStop = False
              Color = clInfoBk
              DataField = 'DAT_INICIO'
              DataSource = DataSource
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdtDat_Termino: TDBEdit
              Left = 112
              Top = 64
              Width = 91
              Height = 21
              TabStop = False
              Color = clInfoBk
              DataField = 'DAT_TERMINO'
              DataSource = DataSource
              ReadOnly = True
              TabOrder = 2
            end
          end
          inherited PagRegistro: TPageControl
            Top = 97
            Width = 664
            Height = 298
            inherited TabRegistroPrincipal: TTabSheet
              inherited Bevel1: TBevel
                Width = 656
                Height = 270
              end
              object Label6: TLabel
                Left = 8
                Top = 8
                Width = 64
                Height = 13
                Caption = 'Qtd.Registros'
                FocusControl = DBEdtQtd_Registros
              end
              object Label7: TLabel
                Left = 104
                Top = 8
                Width = 86
                Height = 13
                Caption = 'Qtd.Registros Erro'
                FocusControl = DBEdtQtd_Registros_Erro
              end
              object DBEdtQtd_Registros: TDBEdit
                Left = 8
                Top = 24
                Width = 85
                Height = 21
                TabStop = False
                Color = clInfoBk
                DataField = 'QTD_REGISTROS'
                DataSource = DataSource
                ParentShowHint = False
                ReadOnly = True
                ShowHint = False
                TabOrder = 0
              end
              object DBEdtQtd_Registros_Erro: TDBEdit
                Left = 104
                Top = 24
                Width = 85
                Height = 21
                TabStop = False
                Color = clInfoBk
                DataField = 'QTD_REGISTROS_ERRO'
                DataSource = DataSource
                ParentShowHint = False
                ReadOnly = True
                ShowHint = False
                TabOrder = 1
              end
            end
            object TabLog: TTabSheet
              Caption = 'Log'
              ImageIndex = 1
              object DBRchLog: TDBRichEdit
                Left = 0
                Top = 0
                Width = 656
                Height = 270
                Align = alClient
                Color = clInfoBk
                DataField = 'LOG'
                DataSource = DataSource
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Courier New'
                Font.Style = []
                ParentFont = False
                ScrollBars = ssBoth
                TabOrder = 0
              end
            end
          end
          inherited PnlRegistroInferior: TPanel
            Top = 395
            Width = 664
          end
        end
      end
    end
    inherited PnlFerramentas: TPanel
      Left = 672
      Height = 445
    end
    inherited TlbTabela: TToolBar
      Top = 445
      Width = 745
      inherited DBNavigator: TDBNavigator
        Hints.Strings = ()
      end
    end
  end
  inherited PnlMestre: TPanel
    Width = 745
    object PnlMestreProcesso: TPanel
      Left = 1
      Top = 1
      Width = 338
      Height = 31
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Label3: TLabel
        Left = 7
        Top = 7
        Width = 44
        Height = 13
        Caption = 'Processo'
      end
      object EdtMestreNome_Processo: TEdit
        Left = 62
        Top = 7
        Width = 267
        Height = 21
        TabStop = False
        Color = clInfoBk
        ReadOnly = True
        TabOrder = 0
      end
    end
  end
  inherited SQLDataSet: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  P1.ID_PROCESSAMENTO,'#13#10'  P1.ID_PROCESSO,'#13#10'  P2.NOME NOM' +
      'E_PROCESSO,'#13#10'  P1.DAT_INICIO,'#13#10'  P1.DAT_TERMINO,'#13#10'  P1.QTD_REGIS' +
      'TROS,'#13#10'  P1.QTD_REGISTROS_ERRO,'#13#10'  P1.LOG'#13#10'FROM'#13#10'  PROCESSO P2,'#13 +
      #10'  PROCESSAMENTO P1'#13#10'WHERE'#13#10'  P2.ID_PROCESSO = P1.ID_PROCESSO'#13#10'O' +
      'RDER BY'#13#10'  P1.DAT_TERMINO DESC,'#13#10'  P1.DAT_INICIO DESC'
    object SQLDataSetID_PROCESSAMENTO: TFMTBCDField
      FieldName = 'ID_PROCESSAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 32
      Size = 8
    end
    object SQLDataSetID_PROCESSO: TFMTBCDField
      FieldName = 'ID_PROCESSO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 32
      Size = 8
    end
    object SQLDataSetNOME_PROCESSO: TStringField
      FieldName = 'NOME_PROCESSO'
      ProviderFlags = []
      Required = True
      Size = 30
    end
    object SQLDataSetDAT_INICIO: TSQLTimeStampField
      FieldName = 'DAT_INICIO'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object SQLDataSetDAT_TERMINO: TSQLTimeStampField
      FieldName = 'DAT_TERMINO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSetQTD_REGISTROS: TFMTBCDField
      FieldName = 'QTD_REGISTROS'
      ProviderFlags = [pfInUpdate]
      Precision = 32
      Size = 8
    end
    object SQLDataSetQTD_REGISTROS_ERRO: TFMTBCDField
      FieldName = 'QTD_REGISTROS_ERRO'
      ProviderFlags = [pfInUpdate]
      Precision = 32
      Size = 8
    end
    object SQLDataSetLOG: TStringField
      FieldName = 'LOG'
      ProviderFlags = [pfInUpdate]
      Size = 4000
    end
  end
  inherited ClientDataSet: TClientDataSet
    object ClientDataSetID_PROCESSAMENTO: TFMTBCDField
      FieldName = 'ID_PROCESSAMENTO'
      Required = True
      Precision = 32
      Size = 8
    end
    object ClientDataSetID_PROCESSO: TFMTBCDField
      FieldName = 'ID_PROCESSO'
      Required = True
      Precision = 32
      Size = 8
    end
    object ClientDataSetNOME_PROCESSO: TStringField
      DisplayLabel = 'Processo'
      FieldName = 'NOME_PROCESSO'
      Required = True
      Size = 30
    end
    object ClientDataSetDAT_INICIO: TSQLTimeStampField
      DisplayLabel = 'In'#237'cio'
      FieldName = 'DAT_INICIO'
      Required = True
    end
    object ClientDataSetDAT_TERMINO: TSQLTimeStampField
      DisplayLabel = 'T'#233'rmino'
      FieldName = 'DAT_TERMINO'
    end
    object ClientDataSetQTD_REGISTROS: TFMTBCDField
      DisplayLabel = 'Qtd.Registros'
      FieldName = 'QTD_REGISTROS'
      Precision = 32
      Size = 8
    end
    object ClientDataSetQTD_REGISTROS_ERRO: TFMTBCDField
      DisplayLabel = 'Qtd.Registros Erro'
      FieldName = 'QTD_REGISTROS_ERRO'
      Precision = 32
      Size = 8
    end
    object ClientDataSetLOG: TStringField
      DisplayLabel = 'Log'
      FieldName = 'LOG'
      Size = 4000
    end
  end
end
