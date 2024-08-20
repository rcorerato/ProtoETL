inherited FrmExecutaProcesso: TFrmExecutaProcesso
  Caption = 'Executando processo...'
  ClientHeight = 45
  Position = poDesktopCenter
  PixelsPerInch = 120
  TextHeight = 16
  inherited PnlMensagem: TPanel
    Height = 45
  end
  inherited ActionList: TActionList
    Top = 8
  end
  inherited ImageList1: TImageList
    Top = 8
  end
  object SQLConnection: TSQLConnection
    Connected = True
    ConnectionName = 'Oracle'
    DriverName = 'Oracle'
    GetDriverFunc = 'getSQLDriverORACLE'
    LibraryName = 'dbexpora.dll'
    LoginPrompt = False
    Params.Strings = (
      'BlobSize=-1'
      'DataBase=RODRIGO'
      'DriverName=Oracle'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=ETL'
      'Oracle TransIsolation=ReadCommited'
      'User_Name=ETL')
    VendorLib = 'OCI.DLL'
    Left = 72
    Top = 8
  end
  object PrcExecutaProcesso: TSQLStoredProc
    SQLConnection = DM.SQLConnection
    Params = <
      item
        DataType = ftBCD
        Name = 'P_ID_PROCESSO'
        ParamType = ptInput
      end>
    StoredProcName = 'PRC_EXECUTA_PROCESSO'
    Left = 104
    Top = 8
  end
end
