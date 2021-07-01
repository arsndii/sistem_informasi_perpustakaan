object f_riwayat_peminjaman: Tf_riwayat_peminjaman
  Left = 516
  Top = 375
  Width = 937
  Height = 465
  Caption = 'Form Riwayat Peminjaman'
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
  object lbl__1: TLabel
    Left = 16
    Top = 8
    Width = 246
    Height = 25
    Caption = 'Data Riwayat Peminjaman'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dg_riwayat_peminjaman: TDBGrid
    Left = 16
    Top = 72
    Width = 889
    Height = 337
    DataSource = dm1.ds_riwayat_peminjaman
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'no_pinjam'
        Title.Alignment = taCenter
        Title.Caption = 'No Pinjam'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Title.Caption = 'Nama Peminjam'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'judul'
        Title.Alignment = taCenter
        Title.Caption = 'Judul Buku'
        Width = 300
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tanggal_pinjam'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal Pinjam'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tanggal_kembali'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal Kembali'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'keterangan'
        Title.Alignment = taCenter
        Title.Caption = 'Keterangan'
        Width = 100
        Visible = True
      end>
  end
  object grp1: TGroupBox
    Left = 704
    Top = 16
    Width = 201
    Height = 49
    Caption = 'Search'
    TabOrder = 1
    object edt_cari: TEdit
      Left = 12
      Top = 17
      Width = 177
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edt_cariChange
    end
  end
  object btn_1: TButton
    Left = 16
    Top = 40
    Width = 97
    Height = 25
    Caption = 'Cetak Laporan'
    TabOrder = 2
    OnClick = btn_1Click
  end
  object PopupMenu1: TPopupMenu
    Left = 352
    Top = 16
    object Hapus1: TMenuItem
      Caption = 'Hapus'
      OnClick = Hapus1Click
    end
  end
end
