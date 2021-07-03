unit form_data_buku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Menus;

type
  Tf_data_buku = class(TForm)
    dg_buku: TDBGrid;
    grp1: TGroupBox;
    edt_cari: TEdit;
    lbl__1: TLabel;
    btn_input_buku: TButton;
    btn_cetak_laporan: TButton;
    PopupMenu1: TPopupMenu;
    Edit1: TMenuItem;
    Hapus1: TMenuItem;
    procedure btn_input_bukuClick(Sender: TObject);
    procedure btn_cetak_laporanClick(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Hapus1Click(Sender: TObject);
    procedure edt_cariChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_data_buku: Tf_data_buku;

implementation

uses
  datamodule, form_input_buku, forn_laporan_buku;

{$R *.dfm}

procedure Tf_data_buku.btn_input_bukuClick(Sender: TObject);
begin
  f_input_buku.showmodal;
end;

procedure Tf_data_buku.btn_cetak_laporanClick(Sender: TObject);
begin
  f_laporan_buku.QuickRep1.preview;
end;

procedure Tf_data_buku.Edit1Click(Sender: TObject);
begin
  with f_input_buku do
  begin
    lbl_judul.Caption := 'Form Edit Buku';
    f_input_buku.Caption := 'Form Edit Buku';

    edt_id_buku.Text := dg_buku.Fields[0].Value;
    edt_judul.Text := dg_buku.Fields[1].Value;
    edt_penulis.Text := dg_buku.Fields[2].Value;
    edt_penerbit.Text := dg_buku.Fields[3].Value;
    edt_tahun_terbit.Text := dg_buku.Fields[4].Value;

    ShowModal;
  end;
end;

procedure Tf_data_buku.Hapus1Click(Sender: TObject);
begin
  if MessageDlg('Lanjutkan hapus data buku ?', mtConfirmation, [mbYes,mbCancel],0) = mryes then
    begin
      with dm1.table_data_buku do
      begin
        Delete;
        First;
      end;
    end;
end;

procedure Tf_data_buku.edt_cariChange(Sender: TObject);
begin
  with dm1.table_data_buku do
  begin
    Active := False;
    CommandText := 'SELECT * FROM data_buku WHERE id_buku LIKE "%'+edt_cari.Text+'%" OR judul LIKE "%'+edt_cari.Text+'%"';
    Active := True;
  end;
end;

end.
