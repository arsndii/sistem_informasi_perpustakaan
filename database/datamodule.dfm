object dm1: Tdm1
  OldCreateOrder = False
  Left = 832
  Top = 312
  Height = 392
  Width = 387
  object koneksi: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Delphi Project\s' +
      'istem_informasi_perpustakaan\database\db_si_perpustakaan.mdb;Per' +
      'sist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 24
  end
  object table_data_buku: TADODataSet
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    CommandText = 'SELECT * FROM data_buku'
    Parameters = <>
    Left = 136
    Top = 88
  end
  object table_anggota: TADODataSet
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    CommandText = 'SELECT * FROM anggota'
    Parameters = <>
    Left = 136
    Top = 152
  end
  object table_peminjaman: TADODataSet
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    CommandText = 
      'SELECT *'#13#10'FROM ((peminjaman'#13#10'INNER JOIN anggota ON peminjaman.id' +
      '_anggota=anggota.id_anggota)'#13#10'INNER JOIN data_buku ON peminjaman' +
      '.id_buku=data_buku.id_buku)'#13#10'WHERE status = '#39'Diproses'#39
    Parameters = <>
    Left = 136
    Top = 24
  end
  object ds_peminjaman: TDataSource
    DataSet = table_peminjaman
    Left = 272
    Top = 24
  end
  object ds_data_buku: TDataSource
    DataSet = table_data_buku
    Left = 272
    Top = 88
  end
  object ds_anggota: TDataSource
    DataSet = table_anggota
    Left = 272
    Top = 152
  end
  object table_riwayat_peminjaman: TADODataSet
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    CommandText = 
      'SELECT *'#13#10'FROM ((peminjaman'#13#10'INNER JOIN anggota ON peminjaman.id' +
      '_anggota=anggota.id_anggota)'#13#10'INNER JOIN data_buku ON peminjaman' +
      '.id_buku=data_buku.id_buku)'#13#10'WHERE peminjaman.status = '#39'Arsip'#39
    Parameters = <>
    Left = 136
    Top = 216
  end
  object ds_riwayat_peminjaman: TDataSource
    DataSet = table_riwayat_peminjaman
    Left = 272
    Top = 216
  end
  object Query: TADOQuery
    Active = True
    Connection = koneksi
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'SELECT * FROM peminjaman')
    Left = 24
    Top = 88
  end
end
