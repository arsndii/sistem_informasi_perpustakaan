object f_data_buku: Tf_data_buku
  Left = 575
  Top = 377
  Width = 842
  Height = 448
  Caption = 'Data Buku'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl__1: TLabel
    Left = 16
    Top = 8
    Width = 97
    Height = 25
    Caption = 'Data Buku'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dg_buku: TDBGrid
    Left = 16
    Top = 72
    Width = 793
    Height = 321
    DataSource = dm1.ds_data_buku
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
        FieldName = 'id_buku'
        Title.Alignment = taCenter
        Title.Caption = 'ID Buku'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'judul'
        Title.Alignment = taCenter
        Title.Caption = 'Judul'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'penulis'
        Title.Alignment = taCenter
        Title.Caption = 'Penulis'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'penerbit'
        Title.Alignment = taCenter
        Title.Caption = 'Penerbit'
        Width = 120
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tahun_terbit'
        Title.Alignment = taCenter
        Title.Caption = 'Tahun Terbit'
        Width = 80
        Visible = True
      end>
  end
  object grp1: TGroupBox
    Left = 592
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
  object btn_input_buku: TButton
    Left = 16
    Top = 40
    Width = 97
    Height = 25
    Caption = 'Input Buku'
    TabOrder = 2
    OnClick = btn_input_bukuClick
  end
  object btn_cetak_laporan: TButton
    Left = 120
    Top = 40
    Width = 97
    Height = 25
    Caption = 'Cetak Laporan'
    TabOrder = 3
    OnClick = btn_cetak_laporanClick
  end
  object PopupMenu1: TPopupMenu
    Left = 320
    Top = 16
    object Edit1: TMenuItem
      Caption = 'Edit'
      OnClick = Edit1Click
    end
    object Hapus1: TMenuItem
      Caption = 'Hapus'
      OnClick = Hapus1Click
    end
  end
end
