object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 265
  Width = 401
  object SQLConnection1: TSQLConnection
    ConnectionName = 'connPedido'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver260.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver260.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=127.0.0.1'
      'Database=DBNAME'
      'User_Name=root'
      'Password=1234'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile=')
    Left = 64
    Top = 24
  end
  object SQLDataSet1: TSQLDataSet
    CommandText = 
      'SELECT p.codigo, p.descricao, pp.quantidade, pp.valor_unitario, ' +
      'pp.valor_total '#13#10'FROM pedidos_produtos pp'#13#10'INNER JOIN produtos p' +
      ' ON p.codigo = pp.codigo_produto'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection1
    Left = 184
    Top = 24
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLDataSet1
    Left = 64
    Top = 104
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 184
    Top = 104
  end
end
