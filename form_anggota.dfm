object f_anggota: Tf_anggota
  Left = 830
  Top = 196
  Width = 1018
  Height = 424
  Caption = 'f_anggota'
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
    Top = 80
    Width = 969
    Height = 289
    DataSource = dm1.ds_anggota
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
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
        Expanded = False
        FieldName = 'no_telp'
        Title.Alignment = taCenter
        Title.Caption = 'No Telp'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tanggal_daftar'
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal Daftar'
        Width = 150
        Visible = True
      end>
  end
end