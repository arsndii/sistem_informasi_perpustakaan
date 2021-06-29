unit form_anggota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  Tf_anggota = class(TForm)
    dg1: TDBGrid;
    grp1: TGroupBox;
    edt_1: TEdit;
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
