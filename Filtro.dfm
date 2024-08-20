inherited FrmFiltro: TFrmFiltro
  Left = 363
  Top = 233
  Caption = 'Filtros'
  ClientHeight = 450
  PixelsPerInch = 96
  TextHeight = 13
  inherited StatusBar: TStatusBar
    Top = 431
  end
  inherited ScrollBox: TScrollBox
    Height = 360
    inherited PageControl: TPageControl
      Height = 336
      inherited TabPesquisa: TTabSheet
        inherited Bevel2: TBevel
          Height = 310
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
          Height = 277
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME_MAPEAMENTO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_COLUNA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_TABELA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROP_TABELA'
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
          Top = 277
        end
      end
      inherited TabRegistro: TTabSheet
        inherited TlbRegistro: TToolBar
          Top = 272
        end
        inherited PnlRegistro: TPanel
          Height = 272
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
            object BtnMapeamento: TButton
              Left = 264
              Top = 24
              Width = 19
              Height = 17
              Caption = '...'
              TabOrder = 1
              OnClick = BtnMapeamentoClick
            end
          end
          inherited PagRegistro: TPageControl
            Top = 57
            Height = 215
            inherited TabRegistroPrincipal: TTabSheet
              inherited Bevel1: TBevel
                Height = 187
              end
              object Label6: TLabel
                Left = 8
                Top = 8
                Width = 58
                Height = 13
                Caption = 'Prop.Tabela'
                FocusControl = DBEdtProp_Tabela
              end
              object Label1: TLabel
                Left = 8
                Top = 48
                Width = 33
                Height = 13
                Caption = 'Tabela'
                FocusControl = DBEdtNome_Tabela
              end
              object Label2: TLabel
                Left = 7
                Top = 88
                Width = 33
                Height = 13
                Caption = 'Coluna'
                FocusControl = DBEdtNome_Coluna
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
              object DBEdtProp_Tabela: TDBEdit
                Left = 8
                Top = 24
                Width = 254
                Height = 21
                TabStop = False
                Color = clInfoBk
                DataField = 'PROP_TABELA'
                DataSource = DataSource
                ReadOnly = True
                TabOrder = 0
              end
              object DBEdtNome_Tabela: TDBEdit
                Left = 8
                Top = 64
                Width = 254
                Height = 21
                TabStop = False
                Color = clInfoBk
                DataField = 'NOME_TABELA'
                DataSource = DataSource
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdtNome_Coluna: TDBEdit
                Left = 8
                Top = 104
                Width = 254
                Height = 21
                TabStop = False
                Color = clInfoBk
                DataField = 'NOME_COLUNA'
                DataSource = DataSource
                ReadOnly = True
                TabOrder = 2
              end
              object BtnColuna: TButton
                Left = 264
                Top = 104
                Width = 19
                Height = 17
                Caption = '...'
                TabOrder = 3
                OnClick = BtnColunaClick
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
                TabOrder = 4
              end
              object DBEdtValor_Comparacao: TDBEdit
                Left = 128
                Top = 144
                Width = 267
                Height = 21
                DataField = 'VALOR_COMPARACAO'
                DataSource = DataSource
                TabOrder = 5
              end
            end
          end
          inherited PnlRegistroInferior: TPanel
            Top = 272
          end
        end
      end
    end
    inherited PnlFerramentas: TPanel
      Height = 336
    end
    inherited TlbTabela: TToolBar
      Top = 336
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
      'SELECT'#13#10'  F.ID_FILTRO,'#13#10'  F.ID_MAPEAMENTO,'#13#10'  M.NOME NOME_MAPEAM' +
      'ENTO,'#13#10'  F.ID_COLUNA,'#13#10'  C.NOME_COLUNA,'#13#10'  C.ID_TABELA,'#13#10'  T.NOM' +
      'E_TABELA,'#13#10'  T.PROPRIETARIO PROP_TABELA,'#13#10'  F.OPERADOR_COMPARACA' +
      'O,'#13#10'  F.VALOR_COMPARACAO'#13#10'FROM'#13#10'  TABELA T,'#13#10'  COLUNA C,'#13#10'  MAPE' +
      'AMENTO M,'#13#10'  FILTRO F'#13#10'WHERE'#13#10'  M.ID_MAPEAMENTO = F.ID_MAPEAMENT' +
      'O AND'#13#10'  C.ID_COLUNA = F.ID_COLUNA AND'#13#10'  T.ID_TABELA = C.ID_TAB' +
      'ELA'
    object SQLDataSetID_FILTRO: TFMTBCDField
      FieldName = 'ID_FILTRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 32
      Size = 8
    end
    object SQLDataSetID_MAPEAMENTO: TFMTBCDField
      FieldName = 'ID_MAPEAMENTO'
      ProviderFlags = [pfInUpdate]
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
    object SQLDataSetID_COLUNA: TFMTBCDField
      FieldName = 'ID_COLUNA'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 32
      Size = 8
    end
    object SQLDataSetNOME_COLUNA: TStringField
      FieldName = 'NOME_COLUNA'
      ProviderFlags = []
      Required = True
      Size = 30
    end
    object SQLDataSetID_TABELA: TFMTBCDField
      FieldName = 'ID_TABELA'
      ProviderFlags = []
      Required = True
      Precision = 32
      Size = 8
    end
    object SQLDataSetNOME_TABELA: TStringField
      FieldName = 'NOME_TABELA'
      ProviderFlags = []
      Required = True
      Size = 30
    end
    object SQLDataSetPROP_TABELA: TStringField
      FieldName = 'PROP_TABELA'
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
    object ClientDataSetID_FILTRO: TFMTBCDField
      FieldName = 'ID_FILTRO'
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
    object ClientDataSetID_COLUNA: TFMTBCDField
      FieldName = 'ID_COLUNA'
      Required = True
      Precision = 32
      Size = 8
    end
    object ClientDataSetNOME_COLUNA: TStringField
      DisplayLabel = 'Coluna'
      FieldName = 'NOME_COLUNA'
      Required = True
      Size = 30
    end
    object ClientDataSetID_TABELA: TFMTBCDField
      FieldName = 'ID_TABELA'
      Required = True
      Precision = 32
      Size = 8
    end
    object ClientDataSetNOME_TABELA: TStringField
      DisplayLabel = 'Tabela'
      FieldName = 'NOME_TABELA'
      Required = True
      Size = 30
    end
    object ClientDataSetPROP_TABELA: TStringField
      DisplayLabel = 'Prop.Tabela'
      FieldName = 'PROP_TABELA'
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
