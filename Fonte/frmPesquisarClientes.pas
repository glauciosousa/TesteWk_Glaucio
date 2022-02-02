unit frmPesquisarClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmPesquisaClientes = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    btnPesquisar: TButton;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaClientes: TfrmPesquisaClientes;

implementation

{$R *.dfm}

procedure TfrmPesquisaClientes.Button1Click(Sender: TObject);
begin
close;
end;

end.
