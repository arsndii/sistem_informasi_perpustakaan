object f_user: Tf_user
  Left = 760
  Top = 407
  Width = 490
  Height = 380
  Caption = 'User Management'
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
  object dg_user: TDBGrid
    Left = 16
    Top = 48
    Width = 441
    Height = 257
    DataSource = dm1.ds_user
    PopupMenu = PopupMenu1
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
      end
      item
        Expanded = False
        FieldName = 'password'
        Visible = False
      end>
  end
  object btn_1: TButton
    Left = 16
    Top = 16
    Width = 81
    Height = 25
    Caption = 'Tambah User'
    TabOrder = 1
    OnClick = btn_1Click
  end
  object PopupMenu1: TPopupMenu
    Left = 120
    object Edit1: TMenuItem
      Caption = 'Edit'
      OnClick = Edit1Click
    end
    object Hapus1: TMenuItem
      Caption = 'Hapus'
      OnClick = Hapus1Click
    end
  end
  object mm1: TMainMenu
    Left = 184
    object Logout1: TMenuItem
      Caption = 'Logout'
      OnClick = Logout1Click
    end
  end
end
