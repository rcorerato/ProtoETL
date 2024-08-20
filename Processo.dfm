inherited FrmProcesso: TFrmProcesso
  Caption = 'Processos'
  ClientHeight = 412
  ClientWidth = 802
  PixelsPerInch = 96
  TextHeight = 13
  inherited ToolBar: TToolBar
    Width = 802
  end
  inherited StatusBar: TStatusBar
    Top = 393
    Width = 802
  end
  inherited ScrollBox: TScrollBox
    Width = 802
    Height = 322
    inherited PageControl: TPageControl
      Width = 697
      Height = 298
      inherited TabPesquisa: TTabSheet
        inherited Bevel2: TBevel
          Width = 689
          Height = 272
        end
        object Label5: TLabel
          Left = 8
          Top = 8
          Width = 28
          Height = 13
          Caption = 'Nome'
          FocusControl = EdtPesquisaNome
        end
        object EdtPesquisaNome: TEdit
          Left = 8
          Top = 24
          Width = 267
          Height = 21
          TabOrder = 0
        end
      end
      inherited TabTabela: TTabSheet
        inherited DBGrid: TDBGrid
          Width = 689
          Height = 239
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ATIVO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'INTERVALO_MINUTOS'
              Width = 117
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DAT_ULTIMA_EXECUCAO'
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DAT_PROXIMA_EXECUCAO'
              Width = 125
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EXECUTANDO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD_EXECUCOES'
              Width = 98
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD_EXECUCOES_ERRO'
              Width = 126
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_MAPEAMENTO'
              Visible = True
            end>
        end
        inherited PnlDetalhe: TPanel
          Top = 239
          Width = 689
        end
      end
      inherited TabRegistro: TTabSheet
        inherited TlbRegistro: TToolBar
          Top = 234
          Width = 689
        end
        inherited PnlRegistro: TPanel
          Width = 689
          Height = 234
          inherited PnlRegistroSuperior: TPanel
            Width = 689
            Height = 57
            object Label1: TLabel
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
              Width = 393
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NOME'
              DataSource = DataSource
              TabOrder = 0
            end
          end
          inherited PagRegistro: TPageControl
            Top = 57
            Width = 689
            Height = 177
            inherited TabRegistroPrincipal: TTabSheet
              inherited Bevel1: TBevel
                Width = 681
                Height = 149
              end
              object Label3: TLabel
                Left = 72
                Top = 8
                Width = 41
                Height = 13
                Caption = 'Intervalo'
                FocusControl = DBEdtIntervalo_Minutos
              end
              object Label10: TLabel
                Left = 8
                Top = 88
                Width = 62
                Height = 13
                Caption = 'Mapeamento'
                FocusControl = DBEdtNome_Mapeamento
              end
              object Label2: TLabel
                Left = 472
                Top = 8
                Width = 57
                Height = 13
                Caption = 'Executando'
                FocusControl = DBEdtExecutando
              end
              object Label4: TLabel
                Left = 184
                Top = 8
                Width = 80
                Height = 13
                Caption = #218'ltima Execu'#231#227'o'
                FocusControl = DBEdtDat_Ultima_Execucao
              end
              object Label6: TLabel
                Left = 8
                Top = 48
                Width = 73
                Height = 13
                Caption = 'Qtd.Execu'#231#245'es'
                FocusControl = DBEdtQtd_Execucoes
              end
              object Label7: TLabel
                Left = 88
                Top = 48
                Width = 95
                Height = 13
                Caption = 'Qtd.Execu'#231#245'es Erro'
                FocusControl = DBEdtQtd_Execucoes_Erro
              end
              object Label8: TLabel
                Left = 296
                Top = 8
                Width = 88
                Height = 13
                Caption = 'Pr'#243'xima Execu'#231#227'o'
                FocusControl = DBEdtDat_Proxima_Execucao
              end
              object SpdProximaExecucaoAgora: TSpeedButton
                Left = 408
                Top = 24
                Width = 46
                Height = 17
                Caption = 'Agora'
                Flat = True
                OnClick = SpdProximaExecucaoAgoraClick
              end
              object DBEdtIntervalo_Minutos: TDBEdit
                Left = 72
                Top = 24
                Width = 91
                Height = 21
                DataField = 'INTERVALO_MINUTOS'
                DataSource = DataSource
                TabOrder = 1
              end
              object DBEdtNome_Mapeamento: TDBEdit
                Left = 8
                Top = 104
                Width = 254
                Height = 21
                TabStop = False
                Color = clInfoBk
                DataField = 'NOME_MAPEAMENTO'
                DataSource = DataSource
                ReadOnly = True
                TabOrder = 8
              end
              object BtnMapeamento: TButton
                Left = 264
                Top = 104
                Width = 19
                Height = 17
                Caption = '...'
                TabOrder = 9
                OnClick = BtnMapeamentoClick
              end
              object DBEdtExecutando: TDBEdit
                Left = 472
                Top = 24
                Width = 16
                Height = 21
                TabStop = False
                Color = clInfoBk
                DataField = 'EXECUTANDO'
                DataSource = DataSource
                ReadOnly = True
                TabOrder = 5
              end
              object DBEdtDat_Ultima_Execucao: TDBEdit
                Left = 184
                Top = 24
                Width = 104
                Height = 21
                TabStop = False
                Color = clInfoBk
                DataField = 'DAT_ULTIMA_EXECUCAO'
                DataSource = DataSource
                ReadOnly = True
                TabOrder = 3
              end
              object DBEdtQtd_Execucoes: TDBEdit
                Left = 8
                Top = 64
                Width = 59
                Height = 21
                TabStop = False
                Color = clInfoBk
                DataField = 'QTD_EXECUCOES'
                DataSource = DataSource
                ReadOnly = True
                TabOrder = 6
              end
              object DBEdtQtd_Execucoes_Erro: TDBEdit
                Left = 88
                Top = 64
                Width = 59
                Height = 21
                TabStop = False
                Color = clInfoBk
                DataField = 'QTD_EXECUCOES_ERRO'
                DataSource = DataSource
                ReadOnly = True
                TabOrder = 7
              end
              object DBChkAtivo: TDBCheckBox
                Left = 8
                Top = 24
                Width = 46
                Height = 13
                Caption = 'Ativo'
                DataField = 'ATIVO'
                DataSource = DataSource
                TabOrder = 0
                ValueChecked = 'S'
                ValueUnchecked = 'N'
              end
              object DBEdtDat_Proxima_Execucao: TDBEdit
                Left = 296
                Top = 24
                Width = 105
                Height = 21
                DataField = 'DAT_PROXIMA_EXECUCAO'
                DataSource = DataSource
                TabOrder = 4
              end
              object SpnIntervaloMinutos: TSpinButton
                Left = 160
                Top = 24
                Width = 16
                Height = 20
                DownGlyph.Data = {
                  0E010000424D0E01000000000000360000002800000009000000060000000100
                  200000000000D800000000000000000000000000000000000000008080000080
                  8000008080000080800000808000008080000080800000808000008080000080
                  8000008080000080800000808000000000000080800000808000008080000080
                  8000008080000080800000808000000000000000000000000000008080000080
                  8000008080000080800000808000000000000000000000000000000000000000
                  0000008080000080800000808000000000000000000000000000000000000000
                  0000000000000000000000808000008080000080800000808000008080000080
                  800000808000008080000080800000808000}
                FocusControl = DBEdtIntervalo_Minutos
                TabOrder = 2
                UpGlyph.Data = {
                  0E010000424D0E01000000000000360000002800000009000000060000000100
                  200000000000D800000000000000000000000000000000000000008080000080
                  8000008080000080800000808000008080000080800000808000008080000080
                  8000000000000000000000000000000000000000000000000000000000000080
                  8000008080000080800000000000000000000000000000000000000000000080
                  8000008080000080800000808000008080000000000000000000000000000080
                  8000008080000080800000808000008080000080800000808000000000000080
                  8000008080000080800000808000008080000080800000808000008080000080
                  800000808000008080000080800000808000}
                OnDownClick = SpnIntervaloMinutosDownClick
                OnUpClick = SpnIntervaloMinutosUpClick
              end
            end
          end
          inherited PnlRegistroInferior: TPanel
            Top = 234
            Width = 689
          end
        end
      end
    end
    inherited PnlFerramentas: TPanel
      Left = 697
      Width = 105
      Height = 298
      object BtnProcessamentos: TBitBtn
        Left = 8
        Top = 8
        Width = 91
        Height = 20
        Caption = 'Processamentos'
        TabOrder = 0
        OnClick = BtnProcessamentosClick
      end
    end
    inherited TlbTabela: TToolBar
      Top = 298
      Width = 802
      inherited DBNavigator: TDBNavigator
        Hints.Strings = ()
      end
    end
  end
  inherited PnlMestre: TPanel
    Width = 802
  end
  inherited SQLDataSet: TSQLDataSet
    CommandText = 
      'SELECT'#13#10'  P.ID_PROCESSO,'#13#10'  P.NOME,'#13#10'  P.ATIVO,'#13#10'  P.INTERVALO_M' +
      'INUTOS,'#13#10'  P.DAT_ULTIMA_EXECUCAO,'#13#10'  P.DAT_PROXIMA_EXECUCAO,'#13#10'  ' +
      'P.EXECUTANDO,'#13#10'  P.QTD_EXECUCOES,'#13#10'  P.QTD_EXECUCOES_ERRO,'#13#10'  P.' +
      'ID_MAPEAMENTO,'#13#10'  M.NOME NOME_MAPEAMENTO'#13#10'FROM'#13#10'  MAPEAMENTO M,'#13 +
      #10'  PROCESSO P'#13#10'WHERE'#13#10'  M.ID_MAPEAMENTO = P.ID_MAPEAMENTO'
    object SQLDataSetID_PROCESSO: TFMTBCDField
      FieldName = 'ID_PROCESSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 32
      Size = 8
    end
    object SQLDataSetNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 30
    end
    object SQLDataSetATIVO: TStringField
      FieldName = 'ATIVO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object SQLDataSetINTERVALO_MINUTOS: TFMTBCDField
      DisplayLabel = 'Intervalo'
      FieldName = 'INTERVALO_MINUTOS'
      ProviderFlags = [pfInUpdate]
      DisplayFormat = '#####0 minutos'
      Precision = 32
      Size = 8
    end
    object SQLDataSetDAT_ULT_EXECUCAO: TSQLTimeStampField
      FieldName = 'DAT_ULTIMA_EXECUCAO'
      ProviderFlags = []
    end
    object SQLDataSetDAT_PROXIMA_EXECUCAO: TSQLTimeStampField
      FieldName = 'DAT_PROXIMA_EXECUCAO'
      ProviderFlags = [pfInUpdate]
    end
    object SQLDataSetEXECUTANDO: TStringField
      FieldName = 'EXECUTANDO'
      ProviderFlags = []
      Size = 1
    end
    object SQLDataSetQTD_EXECUCOES: TFMTBCDField
      FieldName = 'QTD_EXECUCOES'
      ProviderFlags = []
      Precision = 32
      Size = 8
    end
    object SQLDataSetQTD_EXECUCOES_ERRO: TFMTBCDField
      FieldName = 'QTD_EXECUCOES_ERRO'
      ProviderFlags = []
      Precision = 32
      Size = 8
    end
    object SQLDataSetID_MAPEAMENTO: TFMTBCDField
      FieldName = 'ID_MAPEAMENTO'
      ProviderFlags = [pfInUpdate]
      Precision = 32
      Size = 8
    end
    object SQLDataSetNOME_MAPEAMENTO: TStringField
      FieldName = 'NOME_MAPEAMENTO'
      ProviderFlags = []
      Required = True
      Size = 40
    end
  end
  inherited ClientDataSet: TClientDataSet
    object ClientDataSetID_PROCESSO: TFMTBCDField
      FieldName = 'ID_PROCESSO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Precision = 32
      Size = 8
    end
    object ClientDataSetNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Required = True
      Size = 30
    end
    object ClientDataSetATIVO: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Size = 1
    end
    object ClientDataSetINTERVALO_MINUTOS: TFMTBCDField
      DisplayLabel = 'Intervalo'
      FieldName = 'INTERVALO_MINUTOS'
      DisplayFormat = '#####0 minutos'
      Precision = 32
      Size = 8
    end
    object ClientDataSetDAT_ULTIMA_EXECUCAO: TSQLTimeStampField
      DisplayLabel = #218'ltima Execu'#231#227'o'
      FieldName = 'DAT_ULTIMA_EXECUCAO'
    end
    object ClientDataSetDAT_PROXIMA_EXECUCAO: TSQLTimeStampField
      DisplayLabel = 'Pr'#243'xima Execu'#231#227'o'
      FieldName = 'DAT_PROXIMA_EXECUCAO'
    end
    object ClientDataSetEXECUTANDO: TStringField
      DisplayLabel = 'Executando'
      FieldName = 'EXECUTANDO'
      Size = 1
    end
    object ClientDataSetQTD_EXECUCOES: TFMTBCDField
      DisplayLabel = 'Qtd.Execu'#231#245'es'
      FieldName = 'QTD_EXECUCOES'
      Precision = 32
      Size = 8
    end
    object ClientDataSetQTD_EXECUCOES_ERRO: TFMTBCDField
      DisplayLabel = 'Qtd.Execu'#231#245'es Erro'
      FieldName = 'QTD_EXECUCOES_ERRO'
      Precision = 32
      Size = 8
    end
    object ClientDataSetID_MAPEAMENTO: TFMTBCDField
      FieldName = 'ID_MAPEAMENTO'
      Precision = 32
      Size = 8
    end
    object ClientDataSetNOME_MAPEAMENTO: TStringField
      DisplayLabel = 'Mapeamento'
      FieldName = 'NOME_MAPEAMENTO'
      Required = True
      Size = 40
    end
  end
end
