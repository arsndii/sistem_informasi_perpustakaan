object f_input_peminjaman: Tf_input_peminjaman
  Left = 192
  Top = 137
  Width = 457
  Height = 287
  Caption = 'f_input_peminjaman'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_judul: TLabel
    Left = 32
    Top = 16
    Width = 229
    Height = 25
    Caption = 'Form Input Peminjaman'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl_2: TLabel
    Left = 32
    Top = 64
    Width = 74
    Height = 19
    Caption = 'No Pinjam'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbl_3: TLabel
    Left = 32
    Top = 104
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
  object lbl_4: TLabel
    Left = 32
    Top = 152
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
  object edt_no_pinjam: TEdit
    Left = 160
    Top = 60
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
  object btn_simpan: TButton
    Left = 128
    Top = 194
    Width = 81
    Height = 33
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = btn_simpanClick
  end
  object btn_batal: TButton
    Left = 232
    Top = 194
    Width = 81
    Height = 33
    Caption = 'Batal'
    TabOrder = 2
    OnClick = btn_batalClick
  end
  object cb_id_anggota: TComboBox
    Left = 160
    Top = 100
    Width = 249
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 3
  end
  object cb_id_buku: TComboBox
    Left = 160
    Top = 148
    Width = 249
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ItemHeight = 19
    ParentFont = False
    TabOrder = 4
  end
end
