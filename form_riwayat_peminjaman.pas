unit form_riwayat_peminjaman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Menus;

type
  Tf_riwayat_peminjaman = class(TForm)
    dg_riwayat_peminjaman: TDBGrid;
    grp1: TGroupBox;
    edt_cari: TEdit;
    lbl__1: TLabel;
    btn_1: TButton;
    PopupMenu1: TPopupMenu;
    Hapus1: TMenuItem;
    procedure FormActivate(Sender: TObject);
    procedure Hapus1Click(Sender: TObject);
    procedure btn_1Click(Sender: TObject);
    procedure edt_cariChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_riwayat_peminjaman: Tf_riwayat_peminjaman;

implementation

uses
  datamodule, form_laporan_riwayat_peminjaman;

{$R *.dfm}

procedure Tf_riwayat_peminjaman.FormActivate(Sender: TObject);
begin
  with dm1.table_riwayat_peminjaman do
  begin
    // Refresh Table Riwayat Peminjaman
    Active := False;
    Active := True;
  end;
end;

procedure Tf_riwayat_peminjaman.Hapus1Click(Sender: TObject);
begin
  if MessageDlg('Lanjutkan hapus peminjaman ?', mtConfirmation, [mbYes,mbCancel],0) = mryes then
    begin
      with dm1.Query do
      begin
        Close;
        SQL.Clear;
        SQL.Text := 'DELETE FROM peminjaman WHERE no_pinjam = ' + IntToStr(dg_riwayat_peminjaman.Fields[0].Value);
        ExecSQL;
      end;
    end;
    with dm1.table_riwayat_peminjaman do
    begin
      // Refresh Table Peminjaman
      Active := False;
      Active := True;
    end;
    ShowMessage('Data berhasil dihapus.');
end;

procedure Tf_riwayat_peminjaman.btn_1Click(Sender: TObject);
begin
  f_laporan_riwayat_peminjaman.QuickRep1.preview;
end;

procedure Tf_riwayat_peminjaman.edt_cariChange(Sender: TObject);
begin
  with dm1.table_riwayat_peminjaman do
  begin
    if (edt_cari.Text <> '') then
    begin
      Active := False;
      CommandText := 'SELECT * FROM ((peminjaman INNER JOIN anggota ON peminjaman.id_anggota=anggota.id_anggota) INNER JOIN data_buku ON peminjaman.id_buku=data_buku.id_buku) WHERE status = "Arsip" AND no_pinjam LIKE "%'+edt_cari.Text+'%" OR nama LIKE "%'+edt_cari.Text+'%"';
      Active := True;
    end
    else if (edt_cari.Text = '') then
    begin
      Active := False;
      CommandText := 'SELECT * FROM ((peminjaman INNER JOIN anggota ON peminjaman.id_anggota=anggota.id_anggota) INNER JOIN data_buku ON peminjaman.id_buku=data_buku.id_buku) WHERE status = "Arsip"';
      Active := True;
    end;
  end;
end;

end.
