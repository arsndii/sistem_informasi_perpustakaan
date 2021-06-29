unit form_data_buku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  Tf_data_buku = class(TForm)
    dg1: TDBGrid;
    grp1: TGroupBox;
    edt_1: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_data_buku: Tf_data_buku;

implementation

uses
  datamodule;

{$R *.dfm}

end.
