unit datamodule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdm1 = class(TDataModule)
    koneksi: TADOConnection;
    table_user: TADODataSet;
    table_data_buku: TADODataSet;
    table_anggota: TADODataSet;
    table_peminjaman: TADODataSet;
    ds_peminjaman: TDataSource;
    ds_data_buku: TDataSource;
    ds_anggota: TDataSource;
    ds_user: TDataSource;
    table_riwayat_peminjaman: TADODataSet;
    ds_riwayat_peminjaman: TDataSource;
    login: TADOTable;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm1: Tdm1;

implementation

{$R *.dfm}

end.
