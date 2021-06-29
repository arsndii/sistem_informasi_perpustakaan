object f_data_buku: Tf_data_buku
  Left = 865
  Top = 457
  Width = 825
  Height = 440
  Caption = 'f_data_buku'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dg1: TDBGrid
    Left = 16
    Top = 64
    Width = 777
    Height = 321
    DataSource = dm1.ds_data_buku
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_buku'
        Title.Alignment = taCenter
        Title.Caption = 'ID Buku'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'judul'
        Title.Alignment = taCenter
        Title.Caption = 'Judul'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'penulis'
        Title.Alignment = taCenter
        Title.Caption = 'Penulis'
        Width = 120
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
        Expanded = False
        FieldName = 'tahun_terbit'
        Title.Alignment = taCenter
        Title.Caption = 'Tahun Terbit'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'status_buku'
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Width = 100
        Visible = True
      end>
  end
  object grp1: TGroupBox
    Left = 592
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
