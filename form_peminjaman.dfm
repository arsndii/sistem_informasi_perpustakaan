object f_peminjaman: Tf_peminjaman
  Left = 829
  Top = 214
  Width = 882
  Height = 486
  Caption = 'Dashboard'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object l_1: TLabel
    Left = 16
    Top = 8
    Width = 291
    Height = 25
    Caption = 'Sistem Informasi Perpustakaan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dg_peminjaman: TDBGrid
    Left = 16
    Top = 72
    Width = 833
    Height = 337
    DataSource = dm1.ds_peminjaman
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
        Width = 250
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
        FieldName = 'batas_waktu'
        Title.Alignment = taCenter
        Title.Caption = 'Batas Waktu'
        Width = 90
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tanggal_kembali'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal Kembali'
        Width = 100
        Visible = True
      end>
  end
  object grp1: TGroupBox
    Left = 648
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
  object btn_pinjam: TButton
    Left = 16
    Top = 40
    Width = 105
    Height = 25
    Caption = 'Input Peminjaman'
    TabOrder = 2
    OnClick = btn_pinjamClick
  end
  object btn_laporan: TButton
    Left = 128
    Top = 40
    Width = 105
    Height = 25
    Caption = 'Cetak Laporan'
    TabOrder = 3
    OnClick = btn_laporanClick
  end
  object mm1: TMainMenu
    Left = 328
    Top = 16
    object Menu1: TMenuItem
      Caption = 'Menu'
      object Anggota1: TMenuItem
        Caption = 'Anggota'
        OnClick = Anggota1Click
      end
      object DataBuku1: TMenuItem
        Caption = 'Data Buku'
        OnClick = DataBuku1Click
      end
      object RiwayatPeminjaman1: TMenuItem
        Caption = 'Riwayat Peminjaman'
        OnClick = RiwayatPeminjaman1Click
      end
    end
    object Logout1: TMenuItem
      Caption = 'Logout'
      OnClick = Logout1Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 16
    object PerpanjangBatasWaktu1: TMenuItem
      Caption = 'Perpanjang Batas Waktu'
      OnClick = PerpanjangBatasWaktu1Click
    end
    object Pengembalian1: TMenuItem
      Caption = 'Pengembalian'
      OnClick = Pengembalian1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Hapus1: TMenuItem
      Caption = 'Hapus'
      OnClick = Hapus1Click
    end
  end
end
