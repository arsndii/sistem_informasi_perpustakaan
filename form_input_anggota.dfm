object f_input_anggota: Tf_input_anggota
  Left = 776
  Top = 429
  Width = 462
  Height = 336
  Caption = 'Form Input Anggota'
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
    Width = 191
    Height = 25
    Caption = 'Form Input Anggota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl_1: TLabel
    Left = 34
    Top = 72
    Width = 82
    Height = 19
    Caption = 'ID Anggota'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl_2: TLabel
    Left = 34
    Top = 112
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
  object lbl_3: TLabel
    Left = 34
    Top = 152
    Width = 50
    Height = 19
    Caption = 'Alamat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl_4: TLabel
    Left = 34
    Top = 192
    Width = 56
    Height = 19
    Caption = 'No Telp'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt_id_anggota: TEdit
    Left = 162
    Top = 68
    Width = 250
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
    Left = 162
    Top = 108
    Width = 250
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edt_alamat: TEdit
    Left = 162
    Top = 148
    Width = 250
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object edt_no_telp: TEdit
    Left = 162
    Top = 188
    Width = 250
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object btn_simpan: TButton
    Left = 130
    Top = 240
    Width = 81
    Height = 33
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btn_simpanClick
  end
  object btn_batal: TButton
    Left = 234
    Top = 240
    Width = 81
    Height = 33
    Caption = 'Batal'
    TabOrder = 5
    OnClick = btn_batalClick
  end
end
