object f_input_buku: Tf_input_buku
  Left = 742
  Top = 402
  Width = 530
  Height = 389
  Caption = 'Form'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_judul: TLabel
    Left = 34
    Top = 22
    Width = 160
    Height = 25
    Caption = 'Form Input Buku'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl_1: TLabel
    Left = 34
    Top = 78
    Width = 57
    Height = 19
    Caption = 'ID Buku'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl_2: TLabel
    Left = 34
    Top = 118
    Width = 38
    Height = 19
    Caption = 'Judul'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl_3: TLabel
    Left = 34
    Top = 158
    Width = 50
    Height = 19
    Caption = 'Penulis'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl_4: TLabel
    Left = 34
    Top = 198
    Width = 58
    Height = 19
    Caption = 'Penerbit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl_5: TLabel
    Left = 34
    Top = 238
    Width = 108
    Height = 19
    Caption = 'Tahun Penerbit'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edt_id_buku: TEdit
    Left = 180
    Top = 74
    Width = 300
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edt_judul: TEdit
    Left = 180
    Top = 114
    Width = 300
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edt_penulis: TEdit
    Left = 180
    Top = 154
    Width = 300
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object edt_penerbit: TEdit
    Left = 180
    Top = 194
    Width = 300
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
    Left = 164
    Top = 294
    Width = 81
    Height = 33
    Caption = 'Simpan'
    TabOrder = 4
    OnClick = btn_simpanClick
  end
  object btn_batal: TButton
    Left = 268
    Top = 294
    Width = 81
    Height = 33
    Caption = 'Batal'
    TabOrder = 5
    OnClick = btn_batalClick
  end
  object edt_tahun_tebit: TEdit
    Left = 180
    Top = 234
    Width = 300
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
end
