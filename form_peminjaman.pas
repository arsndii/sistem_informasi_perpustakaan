unit form_peminjaman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Menus;

type
  Tf_peminjaman = class(TForm)
    dg1: TDBGrid;
    grp1: TGroupBox;
    edt_1: TEdit;
    l_1: TLabel;
    mm1: TMainMenu;
    Menu1: TMenuItem;
    Anggota1: TMenuItem;
    DataBuku1: TMenuItem;
    RiwayatPeminjaman1: TMenuItem;
    Logout1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Logout1Click(Sender: TObject);
    procedure Anggota1Click(Sender: TObject);
    procedure DataBuku1Click(Sender: TObject);
    procedure RiwayatPeminjaman1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_peminjaman: Tf_peminjaman;

implementation

uses
  datamodule, form_login, form_anggota, form_data_buku,
  form_riwayat_peminjaman;

{$R *.dfm}

procedure Tf_peminjaman.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure Tf_peminjaman.Logout1Click(Sender: TObject);
begin
  f_peminjaman.Hide;
  f_login.Show;
end;

procedure Tf_peminjaman.Anggota1Click(Sender: TObject);
begin
  f_anggota.showmodal;
end;

procedure Tf_peminjaman.DataBuku1Click(Sender: TObject);
begin
  f_data_buku.showmodal;
end;

procedure Tf_peminjaman.RiwayatPeminjaman1Click(Sender: TObject);
begin
  f_riwayat_peminjaman.showmodal;
end;

end.
