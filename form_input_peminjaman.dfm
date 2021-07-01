object f_input_peminjaman: Tf_input_peminjaman
  Left = 781
  Top = 378
  Width = 456
  Height = 440
  Caption = 'Form Input Peminjaman'
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
    Top = 19
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
    Top = 67
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
  object edt_no_pinjam: TEdit
    Left = 160
    Top = 63
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
    Top = 349
    Width = 81
    Height = 33
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = btn_simpanClick
  end
  object btn_batal: TButton
    Left = 232
    Top = 349
    Width = 81
    Height = 33
    Caption = 'Batal'
    TabOrder = 2
    OnClick = btn_batalClick
  end
  object grp1: TGroupBox
    Left = 24
    Top = 107
    Width = 393
    Height = 105
    Caption = 'Data Peminjam'
    TabOrder = 3
    object lbl_3: TLabel
      Left = 7
      Top = 23
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
    object lbl_1: TLabel
      Left = 8
      Top = 63
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
    object cb_id_anggota: TComboBox
      Left = 136
      Top = 19
      Width = 249
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 0
      OnChange = cb_id_anggotaChange
    end
    object edt_nama: TEdit
      Left = 136
      Top = 59
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
  end
  object grp2: TGroupBox
    Left = 24
    Top = 227
    Width = 393
    Height = 105
    Caption = 'Data Buku'
    TabOrder = 4
    object lbl_4: TLabel
      Left = 8
      Top = 23
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
    object lbl_5: TLabel
      Left = 11
      Top = 63
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
    object cb_id_buku: TComboBox
      Left = 136
      Top = 19
      Width = 249
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 19
      ParentFont = False
      TabOrder = 0
      OnChange = cb_id_bukuChange
    end
    object edt_judul: TEdit
      Left = 135
      Top = 59
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
  end
end
