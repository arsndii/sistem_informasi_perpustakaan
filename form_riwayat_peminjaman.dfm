object f_riwayat_peminjaman: Tf_riwayat_peminjaman
  Left = 448
  Top = 413
  Width = 867
  Height = 456
  Caption = 'f_riwayat_peminjaman'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dg_riwayat_peminjaman: TDBGrid
    Left = 16
    Top = 64
    Width = 817
    Height = 337
    DataSource = dm1.ds_riwayat_peminjaman
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
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
        Expanded = False
        FieldName = 'tanggal_pinjam'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal Pinjam'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_kembali'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal Kembali'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'denda'
        Title.Alignment = taCenter
        Title.Caption = 'Denda'
        Width = 90
        Visible = True
      end>
  end
  object grp1: TGroupBox
    Left = 632
    Top = 8
    Width = 201
    Height = 49
    Caption = 'Search'
    TabOrder = 1
    object edt_1: TEdit
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
      Text = 'edt_1'
    end
  end
end
