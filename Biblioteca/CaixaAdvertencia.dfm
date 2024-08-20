object FrmCaixaAdvertencia: TFrmCaixaAdvertencia
  Left = 340
  Top = 120
  BorderStyle = bsDialog
  Caption = 'Advert'#234'ncia'
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
  object LblCausa: TLabel
    Left = 8
    Top = 56
    Width = 45
    Height = 16
    Caption = 'Causa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LblAcao: TLabel
    Left = 8
    Top = 160
    Width = 37
    Height = 16
    Caption = 'A'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clActiveCaption
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ImgWarning: TImage
    Left = 10
    Top = 10
    Width = 32
    Height = 32
    AutoSize = True
    Picture.Data = {
      07544269746D617076020000424D760200000000000076000000280000002000
      0000200000000100040000000000000200000000000000000000100000000000
      000000000000000080000080000000808000800000008000800080800000C0C0
      C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
      FF00777778888888888888888888888888777777888888888888888888888888
      88877730000000000000000000000008888873BBBBBBBBBBBBBBBBBBBBBBBB70
      88883BBBBBBBBBBBBBBBBBBBBBBBBBB708883BBBBBBBBBBBBBBBBBBBBBBBBBBB
      08883BBBBBBBBBBBB7007BBBBBBBBBBB08873BBBBBBBBBBBB0000BBBBBBBBBB7
      088773BBBBBBBBBBB0000BBBBBBBBBB0887773BBBBBBBBBBB7007BBBBBBBBB70
      8877773BBBBBBBBBBBBBBBBBBBBBBB088777773BBBBBBBBBBB0BBBBBBBBBB708
      87777773BBBBBBBBB707BBBBBBBBB08877777773BBBBBBBBB303BBBBBBBB7088
      777777773BBBBBBBB000BBBBBBBB0887777777773BBBBBBB70007BBBBBB70887
      7777777773BBBBBB30003BBBBBB088777777777773BBBBBB00000BBBBB708877
      77777777773BBBBB00000BBBBB08877777777777773BBBBB00000BBBB7088777
      777777777773BBBB00000BBBB0887777777777777773BBBB00000BBB70887777
      7777777777773BBB70007BBB088777777777777777773BBBBBBBBBB708877777
      77777777777773BBBBBBBBB08877777777777777777773BBBBBBBB7088777777
      777777777777773BBBBBBB0887777777777777777777773BBBBBB70887777777
      7777777777777773BBBBB088777777777777777777777773BBBB708777777777
      77777777777777773BB707777777777777777777777777777333777777777777
      7777}
  end
  object LblEfeito: TLabel
    Left = 48
    Top = 8
    Width = 41
    Height = 16
    Caption = 'Efeito'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlight
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MemCausa: TMemo
    Left = 8
    Top = 72
    Width = 424
    Height = 81
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
    TabOrder = 1
  end
  object MemAcao: TMemo
    Left = 8
    Top = 176
    Width = 424
    Height = 81
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
    TabOrder = 2
  end
  object BtnOK: TButton
    Left = 176
    Top = 264
    Width = 93
    Height = 31
    Caption = '&OK'
    Default = True
    TabOrder = 3
    OnClick = BtnOKClick
  end
  object EdtEfeito: TEdit
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
    TabOrder = 0
  end
end
