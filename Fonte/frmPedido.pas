unit frmPedido;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Data.FMTBcd,
  Data.SqlExpr;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    DBEditQuantidade: TDBEdit;
    DBEditValorUnitario: TDBEdit;
    Edit2: TEdit;
    Button2: TButton;
    Inserir: TButton;
    tblPedido: TSQLTable;
    editTotalPedido: TEdit;
    Label6: TLabel;
    Button3: TButton;
    tblPedidoProduto: TSQLTable;
    Button4: TButton;
    Button5: TButton;
    qPedidoProdutos: TSQLQuery;
    DataSource1: TDataSource;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure InserirClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses dtmPedido, frmPesquisarClientes, frmPesquisarProdutos;

procedure TForm1.Button1Click(Sender: TObject);
begin
frmPesquisaClientes.showModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
frmPesquisaProdutos.showModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
tblPedido.Post;
tblPedidoProduto.Post;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
tblPedido.Cancel;
tblPedidoProduto.Cancel;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
tblPedidoProduto.Open;
tblPedidoProduto.Append;
end;

procedure TForm1.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_LEFT)  then begin
    Key := 0;
    PostMessage(DBGrid1.Handle, WM_HSCROLL, 0, 0);
  end
  else if (Key = VK_RIGHT)  then begin
    Key := 0;
    PostMessage(DBGrid1.Handle, WM_HSCROLL, 1, 0);
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
tblPedido.Close;
tblPedidoProduto.Close;
qPedidoProdutos.Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

//  SQLs Pedido

{
// SQL monta Grid de pedidos
SELECT p.codigo, p.descricao, pp.quantidade, pp.valor_unitario, pp.valor_total
FROM pedidos_produtos pp
INNER JOIN produtos p ON p.codigo = pp.codigo_produto

// SQL para formar o valor total do item
SELECT sum(p.valor_unitario * p.quantidade) AS total_item
FROM pedidos_produtos p
WHERE p.numero_pedido = :pedido
GROUP BY p.numero_pedido

// SQL para formar o valor total do pedido
SELECT SUM(p.valor_total) AS total_pedido
FROM pedidos_produtos p
WHERE p.numero_pedido = :pedido
GROUP BY p.numero_pedido


}

end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if Key = VK_RETURN then
   perform(WM_NEXTDLGCTL,0,0);
end;

procedure TForm1.InserirClick(Sender: TObject);
begin
with tblPedido do
begin
  Open;
  Insert;
  FieldByname('numero_pedido').AsInteger  := qPedidoProdutos.FieldByname('numero_pedido').AsInteger;
  FieldByname('codigo_produto').AsInteger := qPedidoProdutos.FieldByname('codigo_produto').AsInteger;
  FieldByname('quantidade').AsFloat := StrToFloat(DBEditQuantidade.Text);
  FieldByname('valor_unitario').AsFloat := StrToFloat(DBEditValorUnitario.Text);
  FieldByname('valor_total').AsFloat := StrToFloat(editTotalPedido.Text);
  Post;
  Close;
  Open
end;

with tblPedidoProduto do
begin
  Open;
  Insert;
  Post;
  Close;
end;

end;

end.
