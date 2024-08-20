inherited FrmMapeamento: TFrmMapeamento
  Left = 363
  Top = 233
  Caption = 'Mapeamentos'
  ClientHeight = 450
  ClientWidth = 705
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar: TToolBar
    Top = 0
    Width = 705
  end
  inherited StatusBar: TStatusBar
    Top = 431
    Width = 705
  end
  inherited ScrollBox: TScrollBox
    Top = 38
    Width = 705
    Height = 393
    inherited PageControl: TPageControl
      Width = 632
      Height = 369
      inherited TabPesquisa: TTabSheet
        inherited Bevel2: TBevel
          Width = 624
          Height = 343
        end
        object Label4: TLabel
          Left = 8
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Nome'
          FocusControl = EdtPesquisaNome
        end
        object Label5: TLabel
          Left = 8
          Top = 48
          Width = 72
          Height = 13
          Caption = 'Tabela Destino'
          FocusControl = EdtPesquisaNome_Tabela_Destino
        end
        object EdtPesquisaNome: TEdit
          Left = 8
          Top = 24
          Width = 267
          Height = 21
          TabOrder = 0
        end
        object EdtPesquisaNome_Tabela_Destino: TEdit
          Left = 8
          Top = 64
          Width = 267
          Height = 21
          TabOrder = 1
        end
      end
      inherited TabTabela: TTabSheet
        inherited DBGrid: TDBGrid
          Width = 624
          Height = 310
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME'
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
              FieldName = 'TIPO_DESTINO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO_ATUALIZACAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_COLUNA_DATA_INCLUSAO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_COLUNA_DATA_ALTERACAO'
              Visible = True
            end>
        end
        inherited PnlDetalhe: TPanel
          Top = 310
          Width = 624
        end
      end
      inherited TabRegistro: TTabSheet
        inherited TlbRegistro: TToolBar
          Top = 305
          Width = 624
        end
        inherited PnlRegistro: TPanel
          Width = 624
          Height = 305
          inherited PnlRegistroSuperior: TPanel
            Width = 624
            Height = 57
            object Label6: TLabel
              Left = 8
              Top = 8
              Width = 28
              Height = 13
              Caption = 'Nome'
              FocusControl = DBEdtNome
            end
            object DBEdtNome: TDBEdit
              Left = 8
              Top = 24
              Width = 254
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NOME'
              DataSource = DataSource
              TabOrder = 0
            end
          end
          inherited PagRegistro: TPageControl
            Top = 57
            Width = 624
            Height = 248
            inherited TabRegistroPrincipal: TTabSheet
              inherited Bevel1: TBevel
                Width = 616
                Height = 220
              end
              object DBRadTipo_Atualizacao: TDBRadioGroup
                Left = 104
                Top = 8
                Width = 105
                Height = 52
                Caption = 'Tipo Atualiza'#231#227'o'
                DataField = 'TIPO_ATUALIZACAO'
                DataSource = DataSource
                Items.Strings = (
                  'Altera'#231#227'o'
                  'Inclus'#227'o')
                TabOrder = 0
                Values.Strings = (
                  '1'
                  '2')
              end
              object DBRadTipo_Destino: TDBRadioGroup
                Left = 8
                Top = 8
                Width = 85
                Height = 52
                Caption = 'Tipo Destino'
                DataField = 'TIPO_DESTINO'
                DataSource = DataSource
                Items.Strings = (
                  'Tabela'
                  'Cubo')
                TabOrder = 1
                Values.Strings = (
                  'T'
                  'C')
              end
            end
            object TabOrigem: TTabSheet
              Caption = 'Origem'
              ImageIndex = 2
              object Bevel3: TBevel
                Left = 0
                Top = 0
                Width = 616
                Height = 220
                Align = alClient
              end
              object Label9: TLabel
                Left = 8
                Top = 8
                Width = 94
                Height = 13
                Caption = 'Prop.Tabela Origem'
                FocusControl = DBEdtProp_Tabela_Origem
              end
              object Label10: TLabel
                Left = 8
                Top = 48
                Width = 69
                Height = 13
                Caption = 'Tabela Origem'
                FocusControl = DBEdtNome_Tabela_Origem
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
              object BtnTabela_Origem: TButton
                Left = 264
                Top = 64
                Width = 19
                Height = 18
                Caption = '...'
                TabOrder = 2
                OnClick = BtnTabela_OrigemClick
              end
              object DBChkOrigem_Tempo: TDBCheckBox
                Left = 8
                Top = 104
                Width = 97
                Height = 17
                Caption = 'Origem Tempo'
                DataField = 'ORIGEM_TEMPO'
                DataSource = DataSource
                TabOrder = 3
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
            end
            object TabDestino: TTabSheet
              Caption = 'Destino'
              ImageIndex = 2
              object Bevel4: TBevel
                Left = 0
                Top = 0
                Width = 616
                Height = 220
                Align = alClient
              end
              object Label2: TLabel
                Left = 8
                Top = 8
                Width = 97
                Height = 13
                Caption = 'Prop.Tabela Destino'
                FocusControl = DBEdtProp_Tabela_Destino
              end
              object Label1: TLabel
                Left = 8
                Top = 48
                Width = 72
                Height = 13
                Caption = 'Tabela Destino'
                FocusControl = DBEdtNome_Tabela_Destino
              end
              object Label3: TLabel
                Left = 8
                Top = 88
                Width = 102
                Height = 13
                Caption = 'Coluna Data Inclus'#227'o'
                FocusControl = DBEdtNome_Coluna_Data_Inclusao
              end
              object Label7: TLabel
                Left = 8
                Top = 128
                Width = 107
                Height = 13
                Caption = 'Coluna Data Altera'#231#227'o'
                FocusControl = DBEdtNome_Coluna_Data_Alteracao
              end
              object DBEdtProp_Tabela_Destino: TDBEdit
                Left = 8
                Top = 24
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
                Left = 8
                Top = 64
                Width = 254
                Height = 21
                TabStop = False
                Color = clInfoBk
                DataField = 'NOME_TABELA_DESTINO'
                DataSource = DataSource
                ReadOnly = True
                TabOrder = 1
              end
              object BtnTabela_Destino: TButton
                Left = 264
                Top = 64
                Width = 19
                Height = 18
                Caption = '...'
                TabOrder = 2
                OnClick = BtnTabela_DestinoClick
              end
              object DBEdtNome_Coluna_Data_Inclusao: TDBEdit
                Left = 8
                Top = 104
                Width = 254
                Height = 21
                TabStop = False
                Color = clInfoBk
                DataField = 'NOME_COLUNA_DATA_INCLUSAO'
                DataSource = DataSource
                ReadOnly = True
                TabOrder = 3
              end
              object DBEdtNome_Coluna_Data_Alteracao: TDBEdit
                Left = 8
                Top = 144
                Width = 254
                Height = 21
                TabStop = False
                Color = clInfoBk
                DataField = 'NOME_COLUNA_DATA_ALTERACAO'
                DataSource = DataSource
                ReadOnly = True
                TabOrder = 4
              end
              object BtnColuna_Data_Alteracao: TButton
                Left = 264
                Top = 144
                Width = 19
                Height = 18
                Caption = '...'
                TabOrder = 5
                OnClick = BtnColuna_Data_AlteracaoClick
              end
              object BtnColuna_Data_Inclusao: TButton
                Left = 264
                Top = 104
                Width = 19
                Height = 17
                Caption = '...'
                TabOrder = 6
                OnClick = BtnColuna_Data_InclusaoClick
              end
            end
          end
          inherited PnlRegistroInferior: TPanel
            Top = 305
            Width = 624
          end
        end
      end
    end
    inherited PnlFerramentas: TPanel
      Left = 632
      Height = 369
      object BtnColunas: TBitBtn
        Left = 8
        Top = 8
        Width = 60
        Height = 20
        Caption = 'Colunas'
        TabOrder = 0
        OnClick = BtnColunasClick
      end
      object BtnFiltros: TBitBtn
        Left = 8
        Top = 32
        Width = 60
        Height = 20
        Caption = 'Filtros'
        TabOrder = 1
        OnClick = BtnFiltrosClick
      end
    end
    inherited TlbTabela: TToolBar
      Top = 369
      Width = 705
    end
  end
  inherited PnlMestre: TPanel
    Top = 38
    Width = 705
    Height = 0
    Visible = False
  end
  inherited SQLDataSet: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  M.ID_MAPEAMENTO,'#13#10'  M.NOME,'#13#10'  M.ID_TABELA_ORIGEM,'#13#10'  ' +
      'TOR.NOME_TABELA NOME_TABELA_ORIGEM,'#13#10'  TOR.PROPRIETARIO PROP_TAB' +
      'ELA_ORIGEM,'#13#10'  M.ORIGEM_TEMPO,'#13#10'  M.ID_TABELA_DESTINO,'#13#10'  TDE.NO' +
      'ME_TABELA NOME_TABELA_DESTINO,'#13#10'  TDE.PROPRIETARIO PROP_TABELA_D' +
      'ESTINO,'#13#10'  M.TIPO_DESTINO,'#13#10'  M.TIPO_ATUALIZACAO,'#13#10'  M.ID_COLUNA' +
      '_DATA_INCLUSAO,'#13#10'  CDI.NOME_COLUNA NOME_COLUNA_DATA_INCLUSAO,'#13#10' ' +
      ' M.ID_COLUNA_DATA_ALTERACAO,'#13#10'  CDA.NOME_COLUNA NOME_COLUNA_DATA' +
      '_ALTERACAO'#13#10'FROM'#13#10'  COLUNA     CDA,'#13#10'  COLUNA     CDI,'#13#10'  TABELA' +
      '     TDE,'#13#10'  TABELA     TOR,'#13#10'  MAPEAMENTO M  '#13#10'WHERE'#13#10'  TOR.ID_' +
      'TABELA(+) = M.ID_TABELA_ORIGEM AND'#13#10'  TDE.ID_TABELA = M.ID_TABEL' +
      'A_DESTINO AND'#13#10'  CDI.ID_COLUNA(+) = M.ID_COLUNA_DATA_INCLUSAO AN' +
      'D'#13#10'  CDA.ID_COLUNA(+) = M.ID_COLUNA_DATA_ALTERACAO'
    object SQLDataSetID_MAPEAMENTO: TFMTBCDField
      FieldName = 'ID_MAPEAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 32
      Size = 8
    end
    object SQLDataSetNOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 40
    end
    object SQLDataSetID_TABELA_ORIGEM: TFMTBCDField
      FieldName = 'ID_TABELA_ORIGEM'
      ProviderFlags = [pfInUpdate]
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
    object SQLDataSetORIGEM_TEMPO: TStringField
      FieldName = 'ORIGEM_TEMPO'
      Size = 1
    end
    object SQLDataSetID_TABELA_DESTINO: TFMTBCDField
      FieldName = 'ID_TABELA_DESTINO'
      ProviderFlags = [pfInUpdate]
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
    object SQLDataSetTIPO_DESTINO: TStringField
      FieldName = 'TIPO_DESTINO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 1
    end
    object SQLDataSetTIPO_ATUALIZACAO: TStringField
      FieldName = 'TIPO_ATUALIZACAO'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 1
    end
    object SQLDataSetID_COLUNA_DATA_INCLUSAO: TFMTBCDField
      FieldName = 'ID_COLUNA_DATA_INCLUSAO'
      ProviderFlags = [pfInUpdate]
      Precision = 32
      Size = 8
    end
    object SQLDataSetNOME_COLUNA_DATA_INCLUSAO: TStringField
      FieldName = 'NOME_COLUNA_DATA_INCLUSAO'
      ProviderFlags = []
      Size = 30
    end
    object SQLDataSetID_COLUNA_DATA_ALTERACAO: TFMTBCDField
      FieldName = 'ID_COLUNA_DATA_ALTERACAO'
      ProviderFlags = [pfInUpdate]
      Precision = 32
      Size = 8
    end
    object SQLDataSetNOME_COLUNA_DATA_ALTERACAO: TStringField
      FieldName = 'NOME_COLUNA_DATA_ALTERACAO'
      ProviderFlags = []
      Size = 30
    end
  end
  inherited DataSetProvider: TDataSetProvider
    UpdateMode = upWhereChanged
  end
  inherited ClientDataSet: TClientDataSet
    object ClientDataSetID_MAPEAMENTO: TFMTBCDField
      FieldName = 'ID_MAPEAMENTO'
      Required = True
      Precision = 32
      Size = 8
    end
    object ClientDataSetNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 40
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
    object ClientDataSetORIGEM_TEMPO: TStringField
      DisplayLabel = 'Origem Tempo'
      FieldName = 'ORIGEM_TEMPO'
      Size = 1
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
    object ClientDataSetTIPO_DESTINO: TStringField
      DisplayLabel = 'Tipo Destino'
      FieldName = 'TIPO_DESTINO'
      Required = True
      Size = 1
    end
    object ClientDataSetTIPO_ATUALIZACAO: TStringField
      DisplayLabel = 'Tipo Atualiza'#231#227'o'
      FieldName = 'TIPO_ATUALIZACAO'
      Size = 1
    end
    object ClientDataSetID_COLUNA_DATA_INCLUSAO: TFMTBCDField
      FieldName = 'ID_COLUNA_DATA_INCLUSAO'
      Precision = 32
      Size = 8
    end
    object ClientDataSetNOME_COLUNA_DATA_INCLUSAO: TStringField
      DisplayLabel = 'Coluna Data Inclus'#227'o'
      FieldName = 'NOME_COLUNA_DATA_INCLUSAO'
      Size = 30
    end
    object ClientDataSetID_COLUNA_DATA_ALTERACAO: TFMTBCDField
      FieldName = 'ID_COLUNA_DATA_ALTERACAO'
      Precision = 32
      Size = 8
    end
    object ClientDataSetNOME_COLUNA_DATA_ALTERACAO: TStringField
      DisplayLabel = 'Coluna Data Altera'#231#227'o'
      FieldName = 'NOME_COLUNA_DATA_ALTERACAO'
      Size = 30
    end
  end
  object QryConsistencia: TSQLDataSet
    NoMetadata = True
    BeforeOpen = QryConsistenciaBeforeOpen
    CommandText = 
      'SELECT DISTINCT'#13#10'  TDE.NOME_TABELA NOME_TABELA_DESTINO,'#13#10'  TDE.P' +
      'ROPRIETARIO PROP_TABELA_DESTINO'#13#10'FROM'#13#10'  TABELA TDE,'#13#10'  COLUNA C' +
      'DE,'#13#10'  MAPEAMENTO_COLUNA MC'#13#10'WHERE'#13#10'  MC.ID_MAPEAMENTO = :P_ID_M' +
      'APEAMENTO AND'#13#10'  CDE.ID_COLUNA = MC.ID_COLUNA_DESTINO AND'#13#10'  TDE' +
      '.ID_TABELA = CDE.ID_TABELA'
    MaxBlobSize = -1
    Params = <
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
