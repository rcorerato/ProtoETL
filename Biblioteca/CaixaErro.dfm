object FrmCaixaErro: TFrmCaixaErro
  Left = 340
  Top = 120
  BorderStyle = bsDialog
  Caption = 'Erro'
  ClientHeight = 302
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 120
  TextHeight = 16
  object LblMensagem: TLabel
    Left = 8
    Top = 56
    Width = 77
    Height = 16
    Caption = 'Mensagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ImgError: TImage
    Left = 8
    Top = 8
    Width = 32
    Height = 32
    AutoSize = True
    Picture.Data = {
      07544269746D617076020000424D760200000000000076000000280000002000
      0000200000000100040000000000000200000000000000000000100000000000
      000000000000000080000080000000808000800000008000800080800000C0C0
      C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF00777777777777788888888777777777777777777777888888888888887777
      7777777777777881111111188888877777777777777811199999999111888887
      7777777777819999999999999918888877777777711999999999999999911888
      8777777719999999999999999999918887777771999999999999999999999918
      887777719999999999999999999999188887771999999F9999999999F9999991
      888771999999FFF99999999FFF99999918877199999FFFFF999999FFFFF99999
      188871999999FFFFF9999FFFFF9999991888199999999FFFFF99FFFFF9999999
      91881999999999FFFFFFFFFF99999999918819999999999FFFFFFFF999999999
      9188199999999999FFFFFF99999999999188199999999999FFFFFF9999999999
      918819999999999FFFFFFFF99999999991881999999999FFFFFFFFFF99999999
      9187199999999FFFFF99FFFFF9999999918771999999FFFFF9999FFFFF999999
      18877199999FFFFF999999FFFFF99999187771999999FFF99999999FFF999999
      1777771999999F9999999999F999999187777771999999999999999999999918
      7777777199999999999999999999991777777777199999999999999999999177
      7777777771199999999999999991177777777777777199999999999999177777
      7777777777771119999999911177777777777777777777711111111777777777
      7777}
  end
  object LblClasse: TLabel
    Left = 48
    Top = 8
    Width = 49
    Height = 16
    Caption = 'Classe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MemMensagem: TMemo
    Left = 8
    Top = 72
    Width = 424
    Height = 185
    TabStop = False
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object BtnOK: TButton
    Left = 176
    Top = 264
    Width = 93
    Height = 31
    Caption = '&OK'
    Default = True
    TabOrder = 2
    OnClick = BtnOKClick
  end
  object EdtClasse: TEdit
    Left = 48
    Top = 24
    Width = 383
    Height = 22
    TabStop = False
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
end
