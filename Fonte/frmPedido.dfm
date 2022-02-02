object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Pedido'
  ClientHeight = 415
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 576
    Height = 49
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 10
      Width = 40
      Height = 13
      Caption = 'Cliente: '
    end
    object Label2: TLabel
      Left = 454
      Top = 5
      Width = 115
      Height = 19
      Caption = 'PEDIDO: 0001'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 62
      Top = 12
      Width = 267
      Height = 21
      TabOrder = 0
    end
    object Button1: TButton
      Left = 335
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 8
    Top = 63
    Width = 576
    Height = 348
    TabOrder = 1
    object Label3: TLabel
      Left = 16
      Top = 62
      Width = 60
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label4: TLabel
      Left = 119
      Top = 62
      Width = 67
      Height = 13
      Caption = 'Valor unit'#225'rio:'
    end
    object Label5: TLabel
      Left = 16
      Top = 11
      Width = 42
      Height = 13
      Caption = 'Produto:'
    end
    object Label6: TLabel
      Left = 352
      Top = 317
      Width = 78
      Height = 13
      Caption = 'Total do pedido:'
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 113
      Width = 545
      Height = 198
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Expanded = False
          Title.Caption = 'C'#243'digo do Produto'
          Width = 104
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Descri'#231#227'o do Produto'
          Width = 113
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Quantidade'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Valor Unit'#225'rio'
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Valor Total'
          Visible = True
        end>
    end
    object DBEditQuantidade: TDBEdit
      Left = 16
      Top = 81
      Width = 89
      Height = 21
      TabOrder = 1
    end
    object DBEditValorUnitario: TDBEdit
      Left = 119
      Top = 81
      Width = 98
      Height = 21
      TabOrder = 2
    end
    object Edit2: TEdit
      Left = 16
      Top = 30
      Width = 258
      Height = 21
      TabOrder = 3
    end
    object Button2: TButton
      Left = 280
      Top = 28
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 4
      OnClick = Button2Click
    end
    object Inserir: TButton
      Left = 369
      Top = 79
      Width = 107
      Height = 25
      Caption = 'Inserir Produto'
      TabOrder = 5
      OnClick = InserirClick
    end
    object editTotalPedido: TEdit
      Left = 436
      Top = 317
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object Button3: TButton
      Left = 464
      Top = 6
      Width = 93
      Height = 25
      Caption = 'Gravar pedido'
      TabOrder = 7
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 482
      Top = 79
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 8
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 383
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Novo Pedido'
      TabOrder = 9
      OnClick = Button5Click
    end
  end
  object tblPedido: TSQLTable
    MaxBlobSize = -1
    SQLConnection = DataModule1.SQLConnection1
    Left = 144
    Top = 320
  end
  object tblPedidoProduto: TSQLTable
    MaxBlobSize = -1
    SQLConnection = DataModule1.SQLConnection1
    Left = 64
    Top = 320
  end
  object qPedidoProdutos: TSQLQuery
    DataSource = DataSource1
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select '
      'codigo, numero_pedido, codigo_produto, '
      'quantidade, valor_unitario, valor_total'
      'from Pedidos_Produtos'
      '')
    SQLConnection = DataModule1.SQLConnection1
    Left = 224
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = DataModule1.ClientDataSet1
    Left = 312
    Top = 320
  end
end
