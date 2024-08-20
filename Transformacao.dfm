inherited FrmTransformacao: TFrmTransformacao
  Left = 221
  Top = 144
  Caption = 'Transforma'#231#245'es'
  ClientHeight = 491
  ClientWidth = 910
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar: TToolBar
    Width = 910
  end
  inherited StatusBar: TStatusBar
    Top = 472
    Width = 910
  end
  inherited ScrollBox: TScrollBox
    Width = 910
    Height = 401
    inherited PageControl: TPageControl
      Width = 805
      Height = 377
      inherited TabPesquisa: TTabSheet
        inherited Bevel2: TBevel
          Width = 797
          Height = 351
        end
        object Label4: TLabel
          Left = 8
          Top = 8
          Width = 62
          Height = 13
          Caption = 'Mapeamento'
          FocusControl = EdtPesquisaNome_Mapeamento
        end
        object EdtPesquisaNome_Mapeamento: TEdit
          Left = 8
          Top = 24
          Width = 267
          Height = 21
          TabOrder = 0
        end
      end
      inherited TabTabela: TTabSheet
        inherited DBGrid: TDBGrid
          Width = 797
          Height = 318
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME_MAPEAMENTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_COLUNA_ORIGEM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_TABELA_ORIGEM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROP_TABELA_ORIGEM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_COLUNA_DESTINO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_TABELA_DESTINO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROP_TABELA_DESTINO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_ORIGEM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_DESTINO'
              Visible = True
            end>
        end
        inherited PnlDetalhe: TPanel
          Top = 318
          Width = 797
        end
      end
      inherited TabRegistro: TTabSheet
        inherited TlbRegistro: TToolBar
          Top = 313
          Width = 797
        end
        inherited PnlRegistro: TPanel
          Width = 797
          Height = 313
          inherited PnlRegistroSuperior: TPanel
            Width = 797
            Height = 57
            object Label10: TLabel
              Left = 8
              Top = 8
              Width = 62
              Height = 13
              Caption = 'Mapeamento'
              FocusControl = DBEdtNome_Mapeamento
            end
            object DBEdtNome_Mapeamento: TDBEdit
              Left = 8
              Top = 24
              Width = 254
              Height = 21
              TabStop = False
              Color = clInfoBk
              DataField = 'NOME_MAPEAMENTO'
              DataSource = DataSource
              ReadOnly = True
              TabOrder = 0
            end
            object BtnMapeamento_Coluna: TButton
              Left = 336
              Top = 24
              Width = 18
              Height = 17
              Caption = '...'
              TabOrder = 1
              OnClick = BtnMapeamento_ColunaClick
            end
          end
          inherited PagRegistro: TPageControl
            Top = 57
            Width = 797
            Height = 256
            inherited TabRegistroPrincipal: TTabSheet
              inherited Bevel1: TBevel
                Width = 789
                Height = 228
              end
              object Label5: TLabel
                Left = 8
                Top = 168
                Width = 60
                Height = 13
                Caption = 'Valor Origem'
                FocusControl = DBEdtValor_Origem
              end
              object Label11: TLabel
                Left = 312
                Top = 168
                Width = 63
                Height = 13
                Caption = 'Valor Destino'
                FocusControl = DBEdtValor_Destino
              end
              object GrpOrigem: TGroupBox
                Left = 8
                Top = 8
                Width = 299
                Height = 153
                Caption = 'Origem'
                TabOrder = 0
                object Label6: TLabel
                  Left = 16
                  Top = 24
                  Width = 94
                  Height = 13
                  Caption = 'Prop.Tabela Origem'
                  FocusControl = DBEdtProp_Tabela_Origem
                end
                object Label1: TLabel
                  Left = 16
                  Top = 64
                  Width = 69
                  Height = 13
                  Caption = 'Tabela Origem'
                  FocusControl = DBEdtNome_Tabela_Origem
                end
                object Label2: TLabel
                  Left = 16
                  Top = 104
                  Width = 69
                  Height = 13
                  Caption = 'Coluna Origem'
                  FocusControl = DBEdtNome_Coluna_Origem
                end
                object DBEdtProp_Tabela_Origem: TDBEdit
                  Left = 16
                  Top = 40
                  Width = 254
                  Height = 21
                  TabStop = False
                  Color = clInfoBk
                  DataField = 'PROP_TABELA_ORIGEM'
                  DataSource = DataSource
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdtNome_Tabela_Origem: TDBEdit
                  Left = 16
                  Top = 80
                  Width = 254
                  Height = 21
                  TabStop = False
                  Color = clInfoBk
                  DataField = 'NOME_TABELA_ORIGEM'
                  DataSource = DataSource
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdtNome_Coluna_Origem: TDBEdit
                  Left = 16
                  Top = 120
                  Width = 254
                  Height = 21
                  TabStop = False
                  Color = clInfoBk
                  DataField = 'NOME_COLUNA_ORIGEM'
                  DataSource = DataSource
                  ReadOnly = True
                  TabOrder = 2
                end
              end
              object GrpDestino: TGroupBox
                Left = 312
                Top = 8
                Width = 300
                Height = 153
                Caption = 'Destino'
                TabOrder = 1
                object Label7: TLabel
                  Left = 16
                  Top = 24
                  Width = 97
                  Height = 13
                  Caption = 'Prop.Tabela Destino'
                  FocusControl = DBEdtProp_Tabela_Destino
                end
                object Label8: TLabel
                  Left = 16
                  Top = 64
                  Width = 72
                  Height = 13
                  Caption = 'Tabela Destino'
                  FocusControl = DBEdtNome_Tabela_Destino
                end
                object Label9: TLabel
                  Left = 16
                  Top = 104
                  Width = 72
                  Height = 13
                  Caption = 'Coluna Destino'
                  FocusControl = DBEdtNome_Coluna_Destino
                end
                object DBEdtProp_Tabela_Destino: TDBEdit
                  Left = 16
                  Top = 40
                  Width = 254
                  Height = 21
                  TabStop = False
                  Color = clInfoBk
                  DataField = 'PROP_TABELA_DESTINO'
                  DataSource = DataSource
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdtNome_Tabela_Destino: TDBEdit
                  Left = 16
                  Top = 80
                  Width = 254
                  Height = 21
                  TabStop = False
                  Color = clInfoBk
                  DataField = 'NOME_TABELA_DESTINO'
                  DataSource = DataSource
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdtNome_Coluna_Destino: TDBEdit
                  Left = 16
                  Top = 120
                  Width = 254
                  Height = 21
                  TabStop = False
                  Color = clInfoBk
                  DataField = 'NOME_COLUNA_DESTINO'
                  DataSource = DataSource
                  ReadOnly = True
                  TabOrder = 2
                end
              end
              object DBEdtValor_Origem: TDBEdit
                Left = 8
                Top = 184
                Width = 299
                Height = 21
                DataField = 'VALOR_ORIGEM'
                DataSource = DataSource
                TabOrder = 2
              end
              object DBEdtValor_Destino: TDBEdit
                Left = 312
                Top = 184
                Width = 300
                Height = 21
                DataField = 'VALOR_DESTINO'
                DataSource = DataSource
                TabOrder = 3
              end
            end
          end
          inherited PnlRegistroInferior: TPanel
            Top = 313
            Width = 797
          end
        end
      end
    end
    inherited PnlFerramentas: TPanel
      Left = 805
      Width = 105
      Height = 377
    end
    inherited TlbTabela: TToolBar
      Top = 377
      Width = 910
    end
  end
  inherited PnlMestre: TPanel
    Width = 910
    object PnlMestreMapeamento: TPanel
      Left = 1
      Top = 1
      Width = 351
      Height = 31
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Label3: TLabel
        Left = 7
        Top = 7
        Width = 62
        Height = 13
        Caption = 'Mapeamento'
      end
      object EdtMestreNome_Mapeamento: TEdit
        Left = 75
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
      'SELECT'#13#10'  T.ID_TRANSFORMACAO,'#13#10'  T.ID_MAPEAMENTO_COLUNA,'#13#10'  MC.I' +
      'D_MAPEAMENTO,'#13#10'  M.NOME NOME_MAPEAMENTO,'#13#10'  MC.ID_COLUNA_ORIGEM,' +
      #13#10'  COR.NOME_COLUNA NOME_COLUNA_ORIGEM,'#13#10'  COR.ID_TABELA ID_TABE' +
      'LA_ORIGEM,'#13#10'  TOR.NOME_TABELA NOME_TABELA_ORIGEM,'#13#10'  TOR.PROPRIE' +
      'TARIO PROP_TABELA_ORIGEM,'#13#10'  MC.ID_COLUNA_DESTINO,'#13#10'  CDE.NOME_C' +
      'OLUNA NOME_COLUNA_DESTINO,'#13#10'  CDE.ID_TABELA ID_TABELA_DESTINO,'#13#10 +
      '  TDE.NOME_TABELA NOME_TABELA_DESTINO,'#13#10'  TDE.PROPRIETARIO PROP_' +
      'TABELA_DESTINO,'#13#10'  T.VALOR_ORIGEM,'#13#10'  T.VALOR_DESTINO'#13#10'FROM'#13#10'  T' +
      'ABELA TDE,'#13#10'  COLUNA CDE,'#13#10'  TABELA TOR,'#13#10'  COLUNA COR,'#13#10'  MAPEA' +
      'MENTO M,'#13#10'  MAPEAMENTO_COLUNA MC,'#13#10'  TRANSFORMACAO T'#13#10'WHERE'#13#10'  M' +
      'C.ID_MAPEAMENTO_COLUNA = T.ID_MAPEAMENTO_COLUNA AND'#13#10'  M.ID_MAPE' +
      'AMENTO = MC.ID_MAPEAMENTO AND'#13#10'  COR.ID_COLUNA = MC.ID_COLUNA_OR' +
      'IGEM AND'#13#10'  TOR.ID_TABELA = COR.ID_TABELA AND'#13#10'  CDE.ID_COLUNA =' +
      ' MC.ID_COLUNA_DESTINO AND'#13#10'  TDE.ID_TABELA = CDE.ID_TABELA'
    object SQLDataSetID_TRANSFORMACAO: TFMTBCDField
      FieldName = 'ID_TRANSFORMACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 32
      Size = 8
    end
    object SQLDataSetID_MAPEAMENTO_COLUNA: TFMTBCDField
      FieldName = 'ID_MAPEAMENTO_COLUNA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 32
      Size = 8
    end
    object SQLDataSetID_MAPEAMENTO: TFMTBCDField
      FieldName = 'ID_MAPEAMENTO'
      ProviderFlags = []
      Required = True
      Precision = 32
      Size = 8
    end
    object SQLDataSetNOME_MAPEAMENTO: TStringField
      FieldName = 'NOME_MAPEAMENTO'
      ProviderFlags = []
      Required = True
      Size = 40
    end
    object SQLDataSetID_COLUNA_ORIGEM: TFMTBCDField
      FieldName = 'ID_COLUNA_ORIGEM'
      ProviderFlags = []
      Required = True
      Precision = 32
      Size = 8
    end
    object SQLDataSetNOME_COLUNA_ORIGEM: TStringField
      FieldName = 'NOME_COLUNA_ORIGEM'
      ProviderFlags = []
      Required = True
      Size = 30
    end
    object SQLDataSetID_TABELA_ORIGEM: TFMTBCDField
      FieldName = 'ID_TABELA_ORIGEM'
      ProviderFlags = []
      Required = True
      Precision = 32
      Size = 8
    end
    object SQLDataSetNOME_TABELA_ORIGEM: TStringField
      FieldName = 'NOME_TABELA_ORIGEM'
      ProviderFlags = []
      Required = True
      Size = 30
    end
    object SQLDataSetPROP_TABELA_ORIGEM: TStringField
      FieldName = 'PROP_TABELA_ORIGEM'
      ProviderFlags = []
      Size = 30
    end
    object SQLDataSetID_COLUNA_DESTINO: TFMTBCDField
      FieldName = 'ID_COLUNA_DESTINO'
      ProviderFlags = []
      Required = True
      Precision = 32
      Size = 8
    end
    object SQLDataSetNOME_COLUNA_DESTINO: TStringField
      FieldName = 'NOME_COLUNA_DESTINO'
      ProviderFlags = []
      Required = True
      Size = 30
    end
    object SQLDataSetID_TABELA_DESTINO: TFMTBCDField
      FieldName = 'ID_TABELA_DESTINO'
      ProviderFlags = []
      Required = True
      Precision = 32
      Size = 8
    end
    object SQLDataSetNOME_TABELA_DESTINO: TStringField
      FieldName = 'NOME_TABELA_DESTINO'
      ProviderFlags = []
      Required = True
      Size = 30
    end
    object SQLDataSetPROP_TABELA_DESTINO: TStringField
      FieldName = 'PROP_TABELA_DESTINO'
      ProviderFlags = []
      Size = 30
    end
    object SQLDataSetVALOR_ORIGEM: TStringField
      FieldName = 'VALOR_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object SQLDataSetVALOR_DESTINO: TStringField
      FieldName = 'VALOR_DESTINO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
  end
  inherited DataSetProvider: TDataSetProvider
    UpdateMode = upWhereChanged
  end
  inherited ClientDataSet: TClientDataSet
    object ClientDataSetID_TRANSFORMACAO: TFMTBCDField
      FieldName = 'ID_TRANSFORMACAO'
      Required = True
      Precision = 32
      Size = 8
    end
    object ClientDataSetID_MAPEAMENTO_COLUNA: TFMTBCDField
      FieldName = 'ID_MAPEAMENTO_COLUNA'
      Required = True
      Precision = 32
      Size = 8
    end
    object ClientDataSetID_MAPEAMENTO: TFMTBCDField
      FieldName = 'ID_MAPEAMENTO'
      Required = True
      Precision = 32
      Size = 8
    end
    object ClientDataSetNOME_MAPEAMENTO: TStringField
      DisplayLabel = 'Mapeamento'
      FieldName = 'NOME_MAPEAMENTO'
      Required = True
      Size = 40
    end
    object ClientDataSetID_COLUNA_ORIGEM: TFMTBCDField
      FieldName = 'ID_COLUNA_ORIGEM'
      Required = True
      Precision = 32
      Size = 8
    end
    object ClientDataSetNOME_COLUNA_ORIGEM: TStringField
      DisplayLabel = 'Coluna Origem'
      FieldName = 'NOME_COLUNA_ORIGEM'
      Required = True
      Size = 30
    end
    object ClientDataSetID_TABELA_ORIGEM: TFMTBCDField
      FieldName = 'ID_TABELA_ORIGEM'
      Required = True
      Precision = 32
      Size = 8
    end
    object ClientDataSetNOME_TABELA_ORIGEM: TStringField
      DisplayLabel = 'Tabela Origem'
      FieldName = 'NOME_TABELA_ORIGEM'
      Required = True
      Size = 30
    end
    object ClientDataSetPROP_TABELA_ORIGEM: TStringField
      DisplayLabel = 'Prop.Tabela Origem'
      FieldName = 'PROP_TABELA_ORIGEM'
      Size = 30
    end
    object ClientDataSetID_COLUNA_DESTINO: TFMTBCDField
      FieldName = 'ID_COLUNA_DESTINO'
      Required = True
      Precision = 32
      Size = 8
    end
    object ClientDataSetNOME_COLUNA_DESTINO: TStringField
      DisplayLabel = 'Coluna Destino'
      FieldName = 'NOME_COLUNA_DESTINO'
      Required = True
      Size = 30
    end
    object ClientDataSetID_TABELA_DESTINO: TFMTBCDField
      FieldName = 'ID_TABELA_DESTINO'
      Required = True
      Precision = 32
      Size = 8
    end
    object ClientDataSetNOME_TABELA_DESTINO: TStringField
      DisplayLabel = 'Tabela Destino'
      FieldName = 'NOME_TABELA_DESTINO'
      Required = True
      Size = 30
    end
    object ClientDataSetPROP_TABELA_DESTINO: TStringField
      DisplayLabel = 'Prop.Tabela Destino'
      FieldName = 'PROP_TABELA_DESTINO'
      Size = 30
    end
    object ClientDataSetVALOR_ORIGEM: TStringField
      DisplayLabel = 'Valor Origem'
      FieldName = 'VALOR_ORIGEM'
      Required = True
      Size = 40
    end
    object ClientDataSetVALOR_DESTINO: TStringField
      DisplayLabel = 'Valor Destino'
      FieldName = 'VALOR_DESTINO'
      Required = True
      Size = 40
    end
  end
end
