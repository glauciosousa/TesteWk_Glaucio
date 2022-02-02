unit frmPesquisarProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmPesquisaProdutos = class(TForm)
    Button1: TButton;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    btnPesquisar: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaProdutos: TfrmPesquisaProdutos;

implementation

{$R *.dfm}

procedure TfrmPesquisaProdutos.Button1Click(Sender: TObject);
begin
close;
end;

end.
