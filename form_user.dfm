object f_user: Tf_user
  Left = 544
  Top = 259
  Width = 490
  Height = 393
  Caption = 'f_user'
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
    Width = 441
    Height = 257
    DataSource = dm1.ds_user
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'username'
        Title.Alignment = taCenter
        Title.Caption = 'Username'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nama'
        Title.Alignment = taCenter
        Title.Caption = 'Nama'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'level'
        Title.Alignment = taCenter
        Title.Caption = 'Level'
        Width = 100
        Visible = True
      end>
  end
end
