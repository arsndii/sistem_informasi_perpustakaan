unit form_riwayat_peminjaman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  Tf_riwayat_peminjaman = class(TForm)
    dg_riwayat_peminjaman: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_riwayat_peminjaman: Tf_riwayat_peminjaman;

implementation

uses
  datamodule;

{$R *.dfm}

end.
