unit form_peminjaman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  Tf_peminjaman = class(TForm)
    dg1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_peminjaman: Tf_peminjaman;

implementation

uses
  datamodule;

{$R *.dfm}

end.
