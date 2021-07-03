object f_anggota: Tf_anggota
  Left = 507
  Top = 373
  Width = 962
  Height = 417
  Caption = 'Data Anggota'
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
    Width = 261
    Height = 25
    Caption = 'Data Anggota Perpustakaan'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object dg_anggota: TDBGrid
    Left = 16
    Top = 72
    Width = 913
    Height = 289
    DataSource = dm1.ds_anggota
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
        FieldName = 'id_anggota'
        Title.Alignment = taCenter
        Title.Caption = 'ID Anggota'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Title.Caption = 'Nama'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alamat'
        Title.Alignment = taCenter
        Title.Caption = 'Alamat'
        Width = 300
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'no_telp'
        Title.Alignment = taCenter
        Title.Caption = 'No Telp'
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'tanggal_daftar'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal Daftar'
        Width = 100
        Visible = True
      end>
  end
  object grp1: TGroupBox
    Left = 728
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
  object btn_input_anggota: TButton
    Left = 16
    Top = 40
    Width = 97
    Height = 25
    Caption = 'Input Anggota'
    TabOrder = 2
    OnClick = btn_input_anggotaClick
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
    Left = 368
    Top = 8
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
