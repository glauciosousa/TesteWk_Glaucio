program TesteWK_Glaucio;

uses
  Vcl.Forms,
  frmPedido in 'frmPedido.pas' {Form1},
  dtmPedido in 'dtmPedido.pas' {DataModule1: TDataModule},
  frmPesquisarClientes in 'frmPesquisarClientes.pas' {frmPesquisaClientes},
  frmPesquisarProdutos in 'frmPesquisarProdutos.pas' {frmPesquisaProdutos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmPesquisaClientes, frmPesquisaClientes);
  Application.CreateForm(TfrmPesquisaProdutos, frmPesquisaProdutos);
  Application.Run;
end.
