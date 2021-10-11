object Form1: TForm1
  Left = 220
  Top = 129
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Computer real info'
  ClientHeight = 494
  ClientWidth = 880
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020040000000000E80200001600000028000000200000004000
    0000010004000000000000020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000000F000
    0000000000000000000000000000F0000000000000000000000000780000F000
    0000000000000000000007888000F000000000000000000000007888F000F000
    00000000000000000000888F0000F000000000000000000000008FF00000F000
    00000000000000000008F0000000F0000000000000000000008F00000000F000
    000000000000000008F000000000F00000000000000000008F0000000000F000
    0000000000000008F00000000000F000000000000000008F000000000000F000
    00000000000008F0000000000000F0000000000007008F00000000000000F000
    000000000780F000000000000000F0000000000078880000000000000000F000
    00000708088FF000000000000000F0000000708808F00000000000000000F000
    0007088808000000000000000000F000007088808F000000000000000000F000
    070888088F000000000000000000F000708880888F000000000000000000F007
    08880888F0000000000000000000F0708880888F00000000000000000000F008
    880888F000000000000000000000F08880888F0000000000000000000000F080
    0888F00000000000000000000000F008888F0000000000000000000000000000
    FFF0000000000000000000000000000000000000000000000000000000000000
    00007FFFFFFE7FFFFFCE7FFFFF867FFFFF027FFFFE027FFFFE067FFFFE0E7FFF
    FC1E7FFFF87E7FFFF0FE7FFFE1FE7FFFC3FE7FF787FE7FF30FFE7FF01FFE7FF0
    3FFE7F807FFE7F003FFE7E001FFE7C01FFFE7801FFFE7001FFFE6001FFFE4003
    FFFE0007FFFE000FFFFE001FFFFE003FFFFE00000000E0FFFFFFF1FFFFFF}
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 865
    Height = 481
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1052#1086#1081' '#1082#1086#1084#1087#1100#1102#1090#1077#1088
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 165
        Height = 25
        Caption = #1048#1084#1103' '#1082#1086#1084#1087#1100#1102#1090#1077#1088#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 39
        Width = 179
        Height = 25
        Caption = #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 126
        Width = 326
        Height = 25
        Caption = #1055#1088#1080#1074#1077#1083#1077#1075#1080#1080' '#1076#1072#1085#1085#1086#1075#1086' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 8
        Top = 404
        Width = 230
        Height = 25
        Caption = #1059#1073#1080#1090#1100' '#1087#1088#1086#1094#1077#1089#1089' '#1087#1086' '#1080#1084#1077#1085#1080
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Edit1: TEdit
        Left = 184
        Top = 8
        Width = 225
        Height = 24
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 195
        Top = 38
        Width = 214
        Height = 24
        TabOrder = 1
      end
      object Button1: TButton
        Left = 8
        Top = 80
        Width = 401
        Height = 25
        Caption = #1059#1079#1085#1072#1090#1100
        TabOrder = 2
        OnClick = Button1Click
      end
      object Memo2: TMemo
        Left = 0
        Top = 158
        Width = 633
        Height = 237
        Lines.Strings = (
          '')
        ScrollBars = ssBoth
        TabOrder = 3
      end
      object GroupBox1: TGroupBox
        Left = 423
        Top = 10
        Width = 210
        Height = 139
        Caption = ' '#1058#1077#1082#1091#1097#1077#1077' '#1074#1088#1077#1084#1103' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        object Label5: TLabel
          Left = 34
          Top = 49
          Width = 5
          Height = 25
        end
        object Label6: TLabel
          Left = 34
          Top = 89
          Width = 5
          Height = 25
        end
      end
      object Edit6: TEdit
        Left = 248
        Top = 404
        Width = 196
        Height = 24
        TabOrder = 5
      end
      object Button7: TButton
        Left = 453
        Top = 404
        Width = 180
        Height = 29
        Caption = #1059#1073#1080#1090#1100
        TabOrder = 6
        OnClick = Button7Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1051#1086#1082#1072#1083#1100#1085#1072#1103' '#1089#1077#1090#1100
      ImageIndex = 1
      object Label3: TLabel
        Left = 0
        Top = 10
        Width = 142
        Height = 25
        Caption = #1056#1086#1073#1086#1095#1072#1103' '#1075#1088#1091#1087#1087#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 315
        Top = 0
        Width = 173
        Height = 25
        Caption = #1042#1074#1077#1089#1090#1080' IP '#1084#1072#1096#1080#1085#1099
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 345
        Top = 148
        Width = 223
        Height = 25
        Caption = #1042#1074#1077#1076#1080#1090#1077' '#1076#1086#1084#1077#1085#1085#1086#1077' '#1080#1084#1103
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 394
        Top = 266
        Width = 146
        Height = 25
        Caption = #1054#1090#1082#1088#1099#1090#1099#1077' '#1086#1082#1085#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Edit3: TEdit
        Left = 158
        Top = 10
        Width = 148
        Height = 24
        TabOrder = 0
      end
      object Memo1: TMemo
        Left = 0
        Top = 39
        Width = 306
        Height = 322
        Lines.Strings = (
          '')
        TabOrder = 1
      end
      object Button2: TButton
        Left = 0
        Top = 368
        Width = 306
        Height = 27
        Caption = #1059#1079#1085#1072#1090#1100
        TabOrder = 2
        OnClick = Button2Click
      end
      object P1: TProgressBar
        Left = 8
        Top = 416
        Width = 298
        Height = 18
        TabOrder = 3
      end
      object Edit4: TEdit
        Left = 315
        Top = 89
        Width = 374
        Height = 24
        Color = clScrollBar
        Enabled = False
        ReadOnly = True
        TabOrder = 4
      end
      object Button3: TButton
        Left = 315
        Top = 59
        Width = 374
        Height = 22
        Caption = #1059#1079#1085#1072#1090#1100' '#1087#1086#1083#1085#1086#1077' '#1076#1086#1084#1077#1085#1085#1086#1077' '#1080#1084#1103
        TabOrder = 5
        OnClick = Button3Click
      end
      object Edit5: TEdit
        Left = 315
        Top = 30
        Width = 374
        Height = 24
        TabOrder = 6
      end
      object Button11: TButton
        Left = 315
        Top = 120
        Width = 374
        Height = 25
        Caption = #1055#1086#1076#1082#1083#1102#1095#1105#1085' '#1083#1080' '#1082#1086#1084#1087' '#1082' '#1089#1077#1090#1080'?'
        TabOrder = 7
        OnClick = Button11Click
      end
      object Edit7: TEdit
        Left = 315
        Top = 177
        Width = 374
        Height = 24
        TabOrder = 8
      end
      object Button14: TButton
        Left = 315
        Top = 208
        Width = 374
        Height = 25
        Caption = #1059#1079#1085#1072#1090#1100' IP'
        TabOrder = 9
        OnClick = Button14Click
      end
      object Edit8: TEdit
        Left = 315
        Top = 240
        Width = 374
        Height = 25
        Color = clScrollBar
        ReadOnly = True
        TabOrder = 10
      end
      object Button13: TButton
        Left = 315
        Top = 408
        Width = 374
        Height = 25
        Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100' '#1089#1077#1090#1077#1074#1086#1081' '#1076#1080#1089#1082' '#1089#1088#1077#1076#1089#1090#1074#1072#1084#1080' Windows'
        TabOrder = 11
        OnClick = Button13Click
      end
      object ListBox2: TListBox
        Left = 315
        Top = 295
        Width = 374
        Height = 106
        ItemHeight = 16
        TabOrder = 12
      end
    end
    object tabsheet3: TTabSheet
      Caption = #1057#1080#1089#1090#1077#1084#1085#1099#1077' '#1076#1080#1088#1077#1082#1090#1086#1088#1080#1080
      ImageIndex = 2
      object Label8: TLabel
        Left = 98
        Top = 10
        Width = 416
        Height = 25
        Caption = #1057#1087#1080#1089#1086#1082' '#1089#1080#1089#1090#1077#1084#1085#1099#1093' '#1076#1080#1088#1077#1082#1090#1086#1088#1080#1081' '#1080' '#1087#1091#1090#1080' '#1082' '#1085#1080#1084
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Memo3: TMemo
        Left = 8
        Top = 80
        Width = 633
        Height = 361
        Lines.Strings = (
          '')
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object Button5: TButton
        Left = 216
        Top = 48
        Width = 201
        Height = 25
        Caption = #1054#1095#1080#1089#1090#1080#1090#1100
        TabOrder = 1
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 424
        Top = 48
        Width = 217
        Height = 25
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        TabOrder = 2
        OnClick = Button6Click
      end
      object Button4: TButton
        Left = 8
        Top = 48
        Width = 200
        Height = 25
        Caption = #1059#1079#1085#1072#1090#1100
        TabOrder = 3
        OnClick = Button4Click
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1042#1080#1076#1077#1086#1088#1077#1078#1080#1084#1099' '#1080' '#1074#1080#1088#1090#1091#1072#1083#1100#1085#1072#1103' '#1087#1072#1084#1103#1090#1100
      ImageIndex = 3
      object Label10: TLabel
        Left = 30
        Top = 10
        Width = 235
        Height = 25
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100' '#1074#1080#1076#1077#1086#1088#1077#1078#1080#1084'?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 374
        Top = 10
        Width = 195
        Height = 25
        Caption = #1042#1080#1088#1090#1091#1072#1083#1100#1085#1072#1103' '#1087#1072#1084#1103#1090#1100
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Button10: TButton
        Left = 8
        Top = 48
        Width = 281
        Height = 25
        Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
        TabOrder = 0
        OnClick = Button10Click
      end
      object ListBox1: TListBox
        Left = 0
        Top = 89
        Width = 297
        Height = 345
        ItemHeight = 16
        TabOrder = 1
      end
      object Button12: TButton
        Left = 296
        Top = 48
        Width = 177
        Height = 25
        Caption = #1059#1079#1085#1072#1090#1100
        TabOrder = 2
        OnClick = Button12Click
      end
      object Memo4: TMemo
        Left = 305
        Top = 89
        Width = 360
        Height = 345
        Lines.Strings = (
          '')
        TabOrder = 3
      end
      object Button15: TButton
        Left = 480
        Top = 48
        Width = 185
        Height = 25
        Caption = #1040#1074#1090#1086#1086#1073#1085#1086#1074#1083#1077#1085#1080#1077'('#1086#1090#1082#1083')'
        TabOrder = 4
        OnClick = Button15Click
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1057#1080#1089#1090#1077#1084#1072
      ImageIndex = 4
      object Memo5: TMemo
        Left = 8
        Top = 39
        Width = 297
        Height = 120
        Lines.Strings = (
          '')
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
      object Button16: TButton
        Left = 8
        Top = 8
        Width = 297
        Height = 25
        Caption = #1054#1087#1088#1077#1076#1077#1083#1080#1090#1100' '#1074#1080#1076#1077#1086#1082#1072#1088#1090#1091' '
        TabOrder = 1
        OnClick = Button16Click
      end
      object Button17: TButton
        Left = 8
        Top = 168
        Width = 298
        Height = 25
        Caption = #1053#1072#1081#1090#1080' '#1079#1074#1091#1082#1086#1074#1091#1102' '#1082#1072#1088#1090#1091
        TabOrder = 2
        OnClick = Button17Click
      end
      object ListBox3: TListBox
        Left = 0
        Top = 207
        Width = 649
        Height = 227
        ItemHeight = 16
        TabOrder = 3
      end
      object Button18: TButton
        Left = 315
        Top = 168
        Width = 334
        Height = 25
        Caption = #1042#1099#1074#1077#1089#1090#1080' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1102' '#1086' '#1089#1080#1089#1090#1077#1084#1077
        TabOrder = 4
        OnClick = Button18Click
      end
      object Button19: TButton
        Left = 312
        Top = 8
        Width = 337
        Height = 25
        Caption = #1059#1079#1085#1072#1090#1100' '#1074#1077#1088#1089#1080#1102' DOS '#1080' Windows'
        TabOrder = 5
        OnClick = Button19Click
      end
      object Memo6: TMemo
        Left = 312
        Top = 39
        Width = 337
        Height = 120
        Lines.Strings = (
          '')
        TabOrder = 6
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1055#1086#1083#1077#1079#1085#1086#1089#1090#1080
      ImageIndex = 5
      object Button8: TButton
        Left = 8
        Top = 8
        Width = 305
        Height = 25
        Caption = #1057#1082#1088#1099#1090#1100' '#1088#1086#1073#1086#1095#1080#1081' '#1089#1090#1086#1083
        TabOrder = 0
        OnClick = Button8Click
      end
      object Button9: TButton
        Left = 8
        Top = 40
        Width = 305
        Height = 25
        Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1088#1072#1073#1086#1095#1080#1081' '#1089#1090#1086#1083
        TabOrder = 1
        OnClick = Button9Click
      end
      object Button20: TButton
        Left = 8
        Top = 72
        Width = 305
        Height = 25
        Caption = #1057#1082#1088#1099#1090#1100' '#1082#1085#1086#1087#1082#1091' '#1055#1091#1089#1082
        TabOrder = 2
        OnClick = Button20Click
      end
      object Button21: TButton
        Left = 8
        Top = 104
        Width = 305
        Height = 25
        Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1082#1085#1086#1087#1082#1091' '#1055#1091#1089#1082
        TabOrder = 3
        OnClick = Button21Click
      end
      object Button22: TButton
        Left = 8
        Top = 136
        Width = 305
        Height = 25
        Caption = #1047#1072#1087#1088#1077#1090#1080#1090#1100' '#1082#1085#1086#1087#1082#1091' '#1055#1091#1089#1082
        TabOrder = 4
        OnClick = Button22Click
      end
      object Button23: TButton
        Left = 8
        Top = 168
        Width = 305
        Height = 25
        Caption = #1056#1072#1079#1088#1077#1096#1080#1090#1100' '#1082#1085#1086#1087#1082#1091' '#1055#1091#1089#1082
        TabOrder = 5
        OnClick = Button23Click
      end
      object Button24: TButton
        Left = 320
        Top = 8
        Width = 329
        Height = 25
        Caption = #1060#1086#1088#1084#1072#1090#1080#1088#1086#1074#1072#1090#1100' '#1076#1080#1089#1082#1077#1090#1091
        TabOrder = 6
        OnClick = Button24Click
      end
      object Edit9: TEdit
        Left = 320
        Top = 72
        Width = 329
        Height = 25
        TabOrder = 7
      end
      object Button25: TButton
        Left = 320
        Top = 40
        Width = 329
        Height = 25
        Caption = #1059#1079#1085#1072#1090#1100' '#1076#1072#1090#1091' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1092#1072#1081#1083#1072
        TabOrder = 8
        OnClick = Button25Click
      end
      object Edit10: TEdit
        Left = 320
        Top = 137
        Width = 329
        Height = 24
        TabOrder = 9
        Text = '10.10.04 13:00:00'
      end
      object Button26: TButton
        Left = 320
        Top = 104
        Width = 329
        Height = 25
        Caption = #1059'c'#1090#1072#1085#1086#1074#1080#1090#1100' '#1076#1072#1090#1091' '#1080#1079#1084#1077#1085#1077#1085#1080#1103' '#1092#1072#1081#1083#1072
        TabOrder = 10
        OnClick = Button26Click
      end
      object Button27: TButton
        Left = 320
        Top = 168
        Width = 329
        Height = 25
        Caption = #1059#1079#1085#1072#1090#1100' '#1089#1087#1080#1089#1086#1082' '#1076#1088#1072#1081#1074#1077#1088#1086#1074
        TabOrder = 11
        OnClick = Button27Click
      end
      object Memo7: TMemo
        Left = 0
        Top = 200
        Width = 649
        Height = 244
        Lines.Strings = (
          '')
        ScrollBars = ssBoth
        TabOrder = 12
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 8000
    OnTimer = Timer1Timer
    Left = 152
    Top = 248
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 184
    Top = 248
  end
  object SaveDialog1: TSaveDialog
    Left = 248
    Top = 248
  end
  object Timer3: TTimer
    Enabled = False
    OnTimer = Timer3Timer
    Left = 120
    Top = 248
  end
  object MainMenu1: TMainMenu
    Left = 56
    Top = 248
    object N1: TMenuItem
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1101#1090#1091' '#1087#1088#1086#1075#1091
      OnClick = N1Click
    end
    object N3: TMenuItem
      Caption = #1040#1074#1090#1086#1088
      OnClick = N3Click
    end
  end
  object SaveDialog2: TSaveDialog
    Left = 216
    Top = 248
  end
  object Timer4: TTimer
    OnTimer = Timer4Timer
    Left = 88
    Top = 248
  end
  object OpenDialog1: TOpenDialog
    Left = 312
    Top = 248
  end
  object OpenDialog2: TOpenDialog
    Left = 280
    Top = 248
  end
end
