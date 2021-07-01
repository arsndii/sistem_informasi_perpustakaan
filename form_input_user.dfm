object f_input_user: Tf_input_user
  Left = 803
  Top = 444
  Width = 410
  Height = 323
  Caption = 'Form'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_judul: TLabel
    Left = 32
    Top = 16
    Width = 138
    Height = 23
    Caption = 'Form Input User'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l_2: TLabel
    Left = 32
    Top = 63
    Width = 71
    Height = 19
    Caption = 'Username'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l_3: TLabel
    Left = 32
    Top = 103
    Width = 41
    Height = 19
    Caption = 'Nama'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l_4: TLabel
    Left = 32
    Top = 143
    Width = 67
    Height = 19
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l_5: TLabel
    Left = 32
    Top = 183
    Width = 36
    Height = 19
    Caption = 'Level'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt_username: TEdit
    Left = 160
    Top = 59
    Width = 201
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edt_nama: TEdit
    Left = 160
    Top = 99
    Width = 201
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edt_password: TEdit
    Left = 160
    Top = 139
    Width = 201
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object cb_level: TComboBox
    Left = 160
    Top = 179
    Width = 201
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 3
    Items.Strings = (
      'admin'
      'administrator')
  end
  object btn_simpan: TButton
    Left = 113
    Top = 224
    Width = 81
    Height = 33
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btn_simpanClick
  end
  object btn_batal: TButton
    Left = 201
    Top = 224
    Width = 81
    Height = 33
    Caption = 'Batal'
    TabOrder = 5
    OnClick = btn_batalClick
  end
end
