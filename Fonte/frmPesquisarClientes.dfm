object frmPesquisaClientes: TfrmPesquisaClientes
  Left = 0
  Top = 0
  Caption = 'Pesquisar Clientes'
  ClientHeight = 344
  ClientWidth = 337
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 9
    Top = 39
    Width = 320
    Height = 267
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 8
    Top = 8
    Width = 240
    Height = 21
    TabOrder = 1
  end
  object btnPesquisar: TButton
    Left = 254
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 2
  end
  object Button1: TButton
    Left = 254
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 3
    OnClick = Button1Click
  end
end
