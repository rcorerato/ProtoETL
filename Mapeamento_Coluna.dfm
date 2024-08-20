inherited FrmMapeamento_Coluna: TFrmMapeamento_Coluna
  Left = 221
  Top = 186
  Caption = 'Mapeamento de Colunas'
  ClientHeight = 623
  ClientWidth = 910
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar: TToolBar
    Width = 910
  end
  inherited StatusBar: TStatusBar
    Top = 604
    Width = 910
  end
  inherited ScrollBox: TScrollBox
    Width = 910
    Height = 533
    inherited PageControl: TPageControl
      Width = 805
      Height = 509
      inherited TabPesquisa: TTabSheet
        inherited Bevel2: TBevel
          Width = 797
          Height = 483
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
          Height = 450
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME_MAPEAMENTO'
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
              FieldName = 'NOME_COLUNA_ORIGEM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ORIGEM_TEMPO'
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
              FieldName = 'NOME_COLUNA_DESTINO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FORMATO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FUNCAO_GRUPO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CHAVE_PESQUISA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_TABELA_PESQUISA_DIMENSAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PROP_TABELA_PESQUISA_DIMENSAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_COLUNA_PESQUISA_DIMENSAO'
              Visible = True
            end>
        end
        inherited PnlDetalhe: TPanel
          Top = 450
          Width = 797
        end
      end
      inherited TabRegistro: TTabSheet
        inherited TlbRegistro: TToolBar
          Top = 445
          Width = 797
        end
        inherited PnlRegistro: TPanel
          Width = 797
          Height = 445
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
            Width = 797
            Height = 388
            inherited TabRegistroPrincipal: TTabSheet
              inherited Bevel1: TBevel
                Width = 789
                Height = 360
              end
              object Label5: TLabel
                Left = 16
                Top = 224
                Width = 68
                Height = 13
                Caption = 'Fun'#231#227'o Grupo'
                FocusControl = DBCboFuncao_Grupo
              end
              object Label14: TLabel
                Left = 16
                Top = 184
                Width = 38
                Height = 13
                Caption = 'Formato'
                FocusControl = DBCboFormato
              end
              object DBCboFuncao_Grupo: TDBComboBox
                Left = 16
                Top = 240
                Width = 85
                Height = 21
                CharCase = ecUpperCase
                DataField = 'FUNCAO_GRUPO'
                DataSource = DataSource
                ItemHeight = 13
                Items.Strings = (
                  'SUM'
                  'COUNT'
                  'AVG'
                  'MAX'
                  'MIN')
                TabOrder = 3
              end
              object GrpOrigem: TGroupBox
                Left = 8
                Top = 8
                Width = 299
                Height = 161
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
                object BtnColuna_Origem: TButton
                  Left = 272
                  Top = 120
                  Width = 18
                  Height = 17
                  Caption = '...'
                  TabOrder = 3
                  OnClick = BtnColuna_OrigemClick
                end
              end
              object GrpDestino: TGroupBox
                Left = 312
                Top = 8
                Width = 300
                Height = 161
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
                object BtnColuna_Destino: TButton
                  Left = 272
                  Top = 120
                  Width = 18
                  Height = 17
                  Caption = '...'
                  TabOrder = 3
                  OnClick = BtnColuna_DestinoClick
                end
              end
              object DBChkChave_Pesquisa: TDBCheckBox
                Left = 16
                Top = 280
                Width = 105
                Height = 13
                Caption = 'Chave Pesquisa'
                DataField = 'CHAVE_PESQUISA'
                DataSource = DataSource
                TabOrder = 4
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object GrpDimensao: TGroupBox
                Left = 312
                Top = 176
                Width = 300
                Height = 161
                Caption = 'Dimens'#227'o'
                TabOrder = 5
                object Label11: TLabel
                  Left = 16
                  Top = 24
                  Width = 154
                  Height = 13
                  Caption = 'Prop.Tabela Pesquisa Dimens'#227'o'
                  FocusControl = DBEdtProp_Tabela_Pesquisa_Dimensao
                end
                object Label12: TLabel
                  Left = 16
                  Top = 64
                  Width = 129
                  Height = 13
                  Caption = 'Tabela Pesquisa Dimens'#227'o'
                  FocusControl = DBEdtTabela_Pesquisa_Dimensao
                end
                object Label13: TLabel
                  Left = 16
                  Top = 104
                  Width = 129
                  Height = 13
                  Caption = 'Coluna Pesquisa Dimens'#227'o'
                  FocusControl = DBEdtColuna_Pesquisa_Dimensao
                end
                object DBEdtProp_Tabela_Pesquisa_Dimensao: TDBEdit
                  Left = 16
                  Top = 40
                  Width = 254
                  Height = 21
                  TabStop = False
                  Color = clInfoBk
                  DataField = 'PROP_TABELA_PESQUISA_DIMENSAO'
                  DataSource = DataSource
                  ReadOnly = True
                  TabOrder = 0
                end
                object DBEdtTabela_Pesquisa_Dimensao: TDBEdit
                  Left = 16
                  Top = 80
                  Width = 254
                  Height = 21
                  TabStop = False
                  Color = clInfoBk
                  DataField = 'NOME_TABELA_PESQUISA_DIMENSAO'
                  DataSource = DataSource
                  ReadOnly = True
                  TabOrder = 1
                end
                object DBEdtColuna_Pesquisa_Dimensao: TDBEdit
                  Left = 16
                  Top = 120
                  Width = 254
                  Height = 21
                  TabStop = False
                  Color = clInfoBk
                  DataField = 'NOME_COLUNA_PESQUISA_DIMENSAO'
                  DataSource = DataSource
                  ReadOnly = True
                  TabOrder = 2
                end
                object BtnColuna_Pesquisa_Dimensao: TButton
                  Left = 272
                  Top = 120
                  Width = 18
                  Height = 17
                  Caption = '...'
                  TabOrder = 3
                  OnClick = BtnColuna_Pesquisa_DimensaoClick
                end
              end
              object DBCboFormato: TDBComboBox
                Left = 16
                Top = 200
                Width = 97
                Height = 21
                CharCase = ecUpperCase
                DataField = 'FORMATO'
                DataSource = DataSource
                ItemHeight = 13
                Items.Strings = (
                  'DDMMYYYY'
                  'MMDDYYYY'
                  'YYYYMMDD'
                  'DD'
                  'MM'
                  'MON'
                  'MONTH'
                  'YY'
                  'YYYY'
                  'Q')
                TabOrder = 2
              end
            end
          end
          inherited PnlRegistroInferior: TPanel
            Top = 445
            Width = 797
          end
        end
      end
    end
    inherited PnlFerramentas: TPanel
      Left = 805
      Width = 105
      Height = 509
      object BtnTransformacoes: TBitBtn
        Left = 8
        Top = 8
        Width = 91
        Height = 20
        Caption = 'Transforma'#231#245'es'
        TabOrder = 0
        OnClick = BtnTransformacoesClick
      end
      object BtnConsistencias: TBitBtn
        Left = 8
        Top = 32
        Width = 91
        Height = 20
        Caption = 'Consist'#234'ncias'
        TabOrder = 1
        OnClick = BtnConsistenciasClick
      end
    end
    inherited TlbTabela: TToolBar
      Top = 509
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
      'SELECT'#13#10'  MC.ID_MAPEAMENTO_COLUNA,'#13#10'  MC.ID_MAPEAMENTO,'#13#10'  M.NOM' +
      'E NOME_MAPEAMENTO,'#13#10'  M.ORIGEM_TEMPO,'#13#10'  MC.ID_COLUNA_ORIGEM,'#13#10' ' +
      ' COR.NOME_COLUNA NOME_COLUNA_ORIGEM,'#13#10'  COR.ID_TABELA ID_TABELA_' +
      'ORIGEM,'#13#10'  TOR.NOME_TABELA NOME_TABELA_ORIGEM,'#13#10'  TOR.PROPRIETAR' +
      'IO PROP_TABELA_ORIGEM,'#13#10'  MC.ID_COLUNA_DESTINO,'#13#10'  CDE.NOME_COLU' +
      'NA NOME_COLUNA_DESTINO,'#13#10'  CDE.ID_TABELA ID_TABELA_DESTINO,'#13#10'  T' +
      'DE.NOME_TABELA NOME_TABELA_DESTINO,'#13#10'  TDE.PROPRIETARIO PROP_TAB' +
      'ELA_DESTINO,'#13#10'  MC.FORMATO,'#13#10'  MC.FUNCAO_GRUPO,'#13#10'  MC.CHAVE_PESQ' +
      'UISA,'#13#10'  MC.ID_COLUNA_PESQUISA_DIMENSAO,'#13#10'  CPD.NOME_COLUNA NOME' +
      '_COLUNA_PESQUISA_DIMENSAO,'#13#10'  CPD.ID_TABELA ID_TABELA_PESQUISA_D' +
      'IMENSAO,'#13#10'  TPD.NOME_TABELA NOME_TABELA_PESQUISA_DIMENSAO,'#13#10'  TP' +
      'D.PROPRIETARIO PROP_TABELA_PESQUISA_DIMENSAO'#13#10'FROM'#13#10'  TABELA TPD' +
      ','#13#10'  COLUNA CPD,'#13#10'  TABELA TDE,'#13#10'  COLUNA CDE,'#13#10'  TABELA TOR,'#13#10' ' +
      ' COLUNA COR,'#13#10'  MAPEAMENTO M,'#13#10'  MAPEAMENTO_COLUNA MC'#13#10'WHERE'#13#10'  ' +
      'M.ID_MAPEAMENTO = MC.ID_MAPEAMENTO AND'#13#10'  COR.ID_COLUNA(+) = MC.' +
      'ID_COLUNA_ORIGEM AND'#13#10'  TOR.ID_TABELA(+) = COR.ID_TABELA AND'#13#10'  ' +
      'CDE.ID_COLUNA = MC.ID_COLUNA_DESTINO AND'#13#10'  TDE.ID_TABELA = CDE.' +
      'ID_TABELA AND'#13#10'  CPD.ID_COLUNA(+) = MC.ID_COLUNA_PESQUISA_DIMENS' +
      'AO AND'#13#10'  TPD.ID_TABELA(+) = CPD.ID_TABELA'
    object SQLDataSetID_MAPEAMENTO_COLUNA: TFMTBCDField
      FieldName = 'ID_MAPEAMENTO_COLUNA'
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
    object SQLDataSetORIGEM_TEMPO: TStringField
      FieldName = 'ORIGEM_TEMPO'
      ProviderFlags = []
      Size = 1
    end
    object SQLDataSetID_COLUNA_ORIGEM: TFMTBCDField
      FieldName = 'ID_COLUNA_ORIGEM'
      ProviderFlags = [pfInUpdate]
      Precision = 32
      Size = 8
    end
    object SQLDataSetNOME_COLUNA_ORIGEM: TStringField
      FieldName = 'NOME_COLUNA_ORIGEM'
      ProviderFlags = []
      Size = 30
    end
    object SQLDataSetID_TABELA_ORIGEM: TFMTBCDField
      FieldName = 'ID_TABELA_ORIGEM'
      ProviderFlags = []
      Precision = 32
      Size = 8
    end
    object SQLDataSetNOME_TABELA_ORIGEM: TStringField
      FieldName = 'NOME_TABELA_ORIGEM'
      ProviderFlags = []
      Size = 30
    end
    object SQLDataSetPROP_TABELA_ORIGEM: TStringField
      FieldName = 'PROP_TABELA_ORIGEM'
      ProviderFlags = []
      Size = 30
    end
    object SQLDataSetID_COLUNA_DESTINO: TFMTBCDField
      FieldName = 'ID_COLUNA_DESTINO'
      ProviderFlags = [pfInUpdate]
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
    object SQLDataSetFORMATO: TStringField
      FieldName = 'FORMATO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SQLDataSetFUNCAO_GRUPO: TStringField
      FieldName = 'FUNCAO_GRUPO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object SQLDataSetCHAVE_PESQUISA: TStringField
      FieldName = 'CHAVE_PESQUISA'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SQLDataSetID_COLUNA_PESQUISA_DIMENSAO: TFMTBCDField
      FieldName = 'ID_COLUNA_PESQUISA_DIMENSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 32
      Size = 8
    end
    object SQLDataSetNOME_COLUNA_PESQUISA_DIMENSAO: TStringField
      FieldName = 'NOME_COLUNA_PESQUISA_DIMENSAO'
      ProviderFlags = []
      Size = 30
    end
    object SQLDataSetID_TABELA_PESQUISA_DIMENSAO: TFMTBCDField
      FieldName = 'ID_TABELA_PESQUISA_DIMENSAO'
      ProviderFlags = []
      Precision = 32
      Size = 8
    end
    object SQLDataSetNOME_TABELA_PESQUISA_DIMENSAO: TStringField
      FieldName = 'NOME_TABELA_PESQUISA_DIMENSAO'
      ProviderFlags = []
      Size = 30
    end
    object SQLDataSetPROP_TABELA_PESQUISA_DIMENSAO: TStringField
      FieldName = 'PROP_TABELA_PESQUISA_DIMENSAO'
      ProviderFlags = []
      Size = 30
    end
  end
  inherited DataSetProvider: TDataSetProvider
    UpdateMode = upWhereChanged
  end
  inherited ClientDataSet: TClientDataSet
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
    object ClientDataSetORIGEM_TEMPO: TStringField
      DisplayLabel = 'Origem Tempo'
      FieldName = 'ORIGEM_TEMPO'
      Size = 1
    end
    object ClientDataSetID_COLUNA_ORIGEM: TFMTBCDField
      FieldName = 'ID_COLUNA_ORIGEM'
      Precision = 32
      Size = 8
    end
    object ClientDataSetNOME_COLUNA_ORIGEM: TStringField
      DisplayLabel = 'Coluna Origem'
      FieldName = 'NOME_COLUNA_ORIGEM'
      Size = 30
    end
    object ClientDataSetID_TABELA_ORIGEM: TFMTBCDField
      FieldName = 'ID_TABELA_ORIGEM'
      Precision = 32
      Size = 8
    end
    object ClientDataSetNOME_TABELA_ORIGEM: TStringField
      DisplayLabel = 'Tabela Origem'
      FieldName = 'NOME_TABELA_ORIGEM'
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
    object ClientDataSetFORMATO: TStringField
      DisplayLabel = 'Formato'
      FieldName = 'FORMATO'
      Size = 10
    end
    object ClientDataSetFUNCAO_GRUPO: TStringField
      DisplayLabel = 'Fun'#231#227'o Grupo'
      FieldName = 'FUNCAO_GRUPO'
      Size = 10
    end
    object ClientDataSetCHAVE_PESQUISA: TStringField
      DisplayLabel = 'Chave Pesquisa'
      FieldName = 'CHAVE_PESQUISA'
      Size = 1
    end
    object ClientDataSetID_COLUNA_PESQUISA_DIMENSAO: TFMTBCDField
      FieldName = 'ID_COLUNA_PESQUISA_DIMENSAO'
      Precision = 32
      Size = 8
    end
    object ClientDataSetNOME_COLUNA_PESQUISA_DIMENSAO: TStringField
      DisplayLabel = 'Coluna Pesquisa Dimens'#227'o'
      FieldName = 'NOME_COLUNA_PESQUISA_DIMENSAO'
      Size = 30
    end
    object ClientDataSetID_TABELA_PESQUISA_DIMENSAO: TFMTBCDField
      FieldName = 'ID_TABELA_PESQUISA_DIMENSAO'
      Precision = 32
      Size = 8
    end
    object ClientDataSetNOME_TABELA_PESQUISA_DIMENSAO: TStringField
      DisplayLabel = 'Tabela Pesquisa Dimens'#227'o'
      FieldName = 'NOME_TABELA_PESQUISA_DIMENSAO'
      Size = 30
    end
    object ClientDataSetPROP_TABELA_PESQUISA_DIMENSAO: TStringField
      DisplayLabel = 'Prop.Tabela Pesquisa Dimens'#227'o'
      FieldName = 'PROP_TABELA_PESQUISA_DIMENSAO'
      Size = 30
    end
  end
  object QryConsistencia: TSQLDataSet
    NoMetadata = True
    BeforeOpen = QryConsistenciaBeforeOpen
    CommandText = 
      'SELECT  '#13#10'  TOR.PROPRIETARIO PROP_TABELA_ORIGEM,'#13#10'  TOR.NOME_TAB' +
      'ELA NOME_TABELA_ORIGEM,'#13#10'  ('#13#10'    SELECT'#13#10'      J.ID_JUNCAO'#13#10'   ' +
      ' FROM'#13#10'      JUNCAO J'#13#10'    WHERE'#13#10'      ('#13#10'        J.ID_COLUNA_T' +
      'ABELA_PAI IN'#13#10'        ('#13#10'          SELECT'#13#10'            COR.ID_CO' +
      'LUNA'#13#10'          FROM '#13#10'            COLUNA COR'#13#10'          WHERE'#13#10 +
      '            COR.ID_TABELA = TOR.ID_TABELA'#13#10'        ) AND'#13#10'      ' +
      '  J.ID_COLUNA_TABELA_FILHO IN'#13#10'        ('#13#10'          SELECT'#13#10'    ' +
      '        C.ID_COLUNA'#13#10'          FROM'#13#10'            COLUNA C,'#13#10'    ' +
      '        TABELA T'#13#10'          WHERE'#13#10'            T.NOME_TABELA = :' +
      'P_NOME_TABELA_ORIGEM AND'#13#10'            T.PROPRIETARIO = :P_PROP_T' +
      'ABELA_ORIGEM AND'#13#10'            C.ID_TABELA = T.ID_TABELA         ' +
      ' '#13#10'        )'#13#10'      ) OR'#13#10'      ('#13#10'        J.ID_COLUNA_TABELA_FI' +
      'LHO IN'#13#10'        ('#13#10'          SELECT'#13#10'            COR.ID_COLUNA'#13#10 +
      '          FROM '#13#10'            COLUNA COR'#13#10'          WHERE'#13#10'      ' +
      '      COR.ID_TABELA = TOR.ID_TABELA'#13#10'        ) AND'#13#10'        J.ID' +
      '_COLUNA_TABELA_PAI IN'#13#10'        ('#13#10'          SELECT'#13#10'            ' +
      'C.ID_COLUNA'#13#10'          FROM'#13#10'            COLUNA C,'#13#10'            ' +
      'TABELA T'#13#10'          WHERE'#13#10'            T.NOME_TABELA =:P_NOME_TA' +
      'BELA_ORIGEM AND'#13#10'            T.PROPRIETARIO = :P_PROP_TABELA_ORI' +
      'GEM AND'#13#10'            C.ID_TABELA = T.ID_TABELA          '#13#10'      ' +
      '  )'#13#10'      )  '#13#10'  ) ID_JUNCAO'#13#10'FROM'#13#10'  TABELA TOR,'#13#10'  MAPEAMENTO' +
      ' M'#13#10'WHERE'#13#10'  M.ID_MAPEAMENTO = :P_ID_MAPEAMENTO AND'#13#10'  TOR.ID_TA' +
      'BELA = M.ID_TABELA_ORIGEM'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'P_NOME_TABELA_ORIGEM'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'P_PROP_TABELA_ORIGEM'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'P_NOME_TABELA_ORIGEM'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'P_PROP_TABELA_ORIGEM'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'P_ID_MAPEAMENTO'
        ParamType = ptInput
      end>
    SQLConnection = DM.SQLConnection
    Left = 352
    Top = 112
  end
end
