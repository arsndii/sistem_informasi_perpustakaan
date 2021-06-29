unit form_anggota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  Tf_anggota = class(TForm)
    dg1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_anggota: Tf_anggota;

implementation

uses
  datamodule;

{$R *.dfm}

end.
