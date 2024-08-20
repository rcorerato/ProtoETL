inherited FrmConsistencia: TFrmConsistencia
  Left = 363
  Top = 233
  Caption = 'Consist'#234'ncias'
  ClientHeight = 444
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar: TStatusBar
    Top = 425
  end
  inherited ScrollBox: TScrollBox
    Height = 354
    inherited PageControl: TPageControl
      Height = 330
      inherited TabPesquisa: TTabSheet
        inherited Bevel2: TBevel
          Height = 304
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
          Height = 271
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
              FieldName = 'OPERADOR_COMPARACAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_COMPARACAO'
              Visible = True
            end>
        end
        inherited PnlDetalhe: TPanel
          Top = 271
        end
      end
      inherited TabRegistro: TTabSheet
        inherited TlbRegistro: TToolBar
          Top = 266
        end
        inherited PnlRegistro: TPanel
          Height = 266
          inherited PnlRegistroSuperior: TPanel
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
            Height = 209
            inherited TabRegistroPrincipal: TTabSheet
              inherited Bevel1: TBevel
                Height = 181
              end
              object Label6: TLabel
                Left = 8
                Top = 8
                Width = 58
                Height = 13
                Caption = 'Prop.Tabela'
                FocusControl = DBEdtProp_Tabela_Origem
              end
              object Label1: TLabel
                Left = 8
                Top = 48
                Width = 33
                Height = 13
                Caption = 'Tabela'
                FocusControl = DBEdtNome_Tabela_Origem
              end
              object Label2: TLabel
                Left = 8
                Top = 88
                Width = 33
                Height = 13
                Caption = 'Coluna'
                FocusControl = DBEdtNome_Coluna_Origem
              end
              object Label5: TLabel
                Left = 8
                Top = 128
                Width = 107
                Height = 13
                Caption = 'Operador Compara'#231#227'o'
                FocusControl = DBCboOperador_Comparacao
              end
              object Label3: TLabel
                Left = 128
                Top = 128
                Width = 87
                Height = 13
                Caption = 'Valor Compara'#231#227'o'
                FocusControl = DBEdtValor_Comparacao
              end
              object DBEdtProp_Tabela_Origem: TDBEdit
                Left = 8
                Top = 24
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
                Left = 8
                Top = 64
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
                Left = 8
                Top = 104
                Width = 254
                Height = 21
                TabStop = False
                Color = clInfoBk
                DataField = 'NOME_COLUNA_ORIGEM'
                DataSource = DataSource
                ReadOnly = True
                TabOrder = 2
              end
              object DBCboOperador_Comparacao: TDBComboBox
                Left = 8
                Top = 144
                Width = 39
                Height = 21
                Style = csDropDownList
                CharCase = ecUpperCase
                DataField = 'OPERADOR_COMPARACAO'
                DataSource = DataSource
                ItemHeight = 13
                Items.Strings = (
                  '='
                  '<>'
                  '>'
                  '<'
                  '>='
                  '<=')
                TabOrder = 3
              end
              object DBEdtValor_Comparacao: TDBEdit
                Left = 128
                Top = 144
                Width = 267
                Height = 21
                DataField = 'VALOR_COMPARACAO'
                DataSource = DataSource
                TabOrder = 4
              end
            end
          end
          inherited PnlRegistroInferior: TPanel
            Top = 266
          end
        end
      end
    end
    inherited PnlFerramentas: TPanel
      Height = 330
    end
    inherited TlbTabela: TToolBar
      Top = 330
    end
  end
  inherited PnlMestre: TPanel
    object PnlMestreMapeamento: TPanel
      Left = 1
      Top = 1
      Width = 351
      Height = 31
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Label7: TLabel
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
      'SELECT'#13#10'  C.ID_CONSISTENCIA,'#13#10'  C.ID_MAPEAMENTO_COLUNA,'#13#10'  MC.ID' +
      '_MAPEAMENTO,'#13#10'  M.NOME NOME_MAPEAMENTO,'#13#10'  MC.ID_COLUNA_ORIGEM,'#13 +
      #10'  COR.NOME_COLUNA NOME_COLUNA_ORIGEM,'#13#10'  COR.ID_TABELA ID_TABEL' +
      'A_ORIGEM,'#13#10'  TOR.NOME_TABELA NOME_TABELA_ORIGEM,'#13#10'  TOR.PROPRIET' +
      'ARIO PROP_TABELA_ORIGEM,'#13#10'  C.OPERADOR_COMPARACAO,'#13#10'  C.VALOR_CO' +
      'MPARACAO'#13#10'FROM'#13#10'  TABELA TOR,'#13#10'  COLUNA COR,'#13#10'  MAPEAMENTO M,'#13#10' ' +
      ' MAPEAMENTO_COLUNA MC,'#13#10'  CONSISTENCIA C'#13#10'WHERE'#13#10'  MC.ID_MAPEAME' +
      'NTO_COLUNA = C.ID_MAPEAMENTO_COLUNA AND'#13#10'  M.ID_MAPEAMENTO = MC.' +
      'ID_MAPEAMENTO AND'#13#10'  COR.ID_COLUNA = MC.ID_COLUNA_ORIGEM AND'#13#10'  ' +
      'TOR.ID_TABELA = COR.ID_TABELA'
    object SQLDataSetID_CONSISTENCIA: TFMTBCDField
      FieldName = 'ID_CONSISTENCIA'
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
      DisplayWidth = 40
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
    object SQLDataSetOPERADOR_COMPARACAO: TStringField
      FieldName = 'OPERADOR_COMPARACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 10
    end
    object SQLDataSetVALOR_COMPARACAO: TStringField
      FieldName = 'VALOR_COMPARACAO'
      ProviderFlags = [pfInUpdate]
      Size = 4000
    end
  end
  inherited DataSetProvider: TDataSetProvider
    UpdateMode = upWhereChanged
  end
  inherited ClientDataSet: TClientDataSet
    object ClientDataSetID_CONSISTENCIA: TFMTBCDField
      FieldName = 'ID_CONSISTENCIA'
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
    object ClientDataSetOPERADOR_COMPARACAO: TStringField
      DisplayLabel = 'Operador Compara'#231#227'o'
      FieldName = 'OPERADOR_COMPARACAO'
      Required = True
      Size = 10
    end
    object ClientDataSetVALOR_COMPARACAO: TStringField
      DisplayLabel = 'Valor Compara'#231#227'o'
      FieldName = 'VALOR_COMPARACAO'
      Size = 4000
    end
  end
end
