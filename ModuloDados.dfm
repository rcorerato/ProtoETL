object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 395
  Top = 290
  Height = 303
  Width = 455
  object SQLConnection: TSQLConnection
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
    AfterConnect = SQLConnectionAfterConnect
    BeforeConnect = SQLConnectionBeforeConnect
    Left = 40
    Top = 24
  end
  object QrySequence: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 136
    Top = 24
  end
  object QryLookup: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 220
    Top = 24
  end
  object SQLMonitor: TSQLMonitor
    AutoSave = True
    FileName = 'SQLMonitor.txt'
    SQLConnection = SQLConnection
    Left = 40
    Top = 80
  end
end
