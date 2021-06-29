unit form_data_buku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  Tf_data_buku = class(TForm)
    dg1: TDBGrid;
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
