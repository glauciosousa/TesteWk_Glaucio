unit dtmPedido;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, Data.SqlExpr, Data.DBXMySQL;

type
  TDataModule1 = class(TDataModule)
    SQLConnection1: TSQLConnection;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
