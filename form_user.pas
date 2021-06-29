unit form_user;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  Tf_user = class(TForm)
    dg1: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_user: Tf_user;

implementation

uses
  datamodule;

{$R *.dfm}

end.
