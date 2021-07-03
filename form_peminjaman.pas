unit form_peminjaman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Menus;

type
  Tf_peminjaman = class(TForm)
    dg_peminjaman: TDBGrid;
    grp1: TGroupBox;
    edt_cari: TEdit;
    l_1: TLabel;
    mm1: TMainMenu;
    Menu1: TMenuItem;
    Anggota1: TMenuItem;
    DataBuku1: TMenuItem;
    RiwayatPeminjaman1: TMenuItem;
    Logout1: TMenuItem;
    btn_pinjam: TButton;
    btn_laporan: TButton;
    PopupMenu1: TPopupMenu;
    PerpanjangBatasWaktu1: TMenuItem;
    Pengembalian1: TMenuItem;
    N1: TMenuItem;
    Hapus1: TMenuItem;
    procedure Anggota1Click(Sender: TObject);
    procedure DataBuku1Click(Sender: TObject);
    procedure RiwayatPeminjaman1Click(Sender: TObject);
    procedure btn_pinjamClick(Sender: TObject);
    procedure btn_laporanClick(Sender: TObject);
    procedure PerpanjangBatasWaktu1Click(Sender: TObject);
    procedure Pengembalian1Click(Sender: TObject);
    procedure Hapus1Click(Sender: TObject);
    procedure edt_cariChange(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_peminjaman: Tf_peminjaman;

implementation

uses
  datamodule, form_anggota, form_data_buku,
  form_riwayat_peminjaman, form_input_peminjaman, form_laporan_peminjaman,
  form_profile;

{$R *.dfm}

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

procedure Tf_peminjaman.btn_pinjamClick(Sender: TObject);
begin
  f_input_peminjaman.showmodal;
end;

procedure Tf_peminjaman.btn_laporanClick(Sender: TObject);
begin
  f_laporan_peminjaman.QuickRep1.preview
end;

procedure Tf_peminjaman.PerpanjangBatasWaktu1Click(Sender: TObject);
begin
  with dm1.table_peminjaman do
  begin
    Edit;
    DateSeparator := '/';
    ShortDateFormat := 'dd/mm/yyyy';
    // Perpanjangan batas waktu selama 3 hari
    FieldValues['batas_waktu'] := DateToStr(StrToDate(dg_peminjaman.Fields[4].Value)+3);
    Post;
    First;
  end;
  ShowMessage('Batas waktu pengembalian diperpanjang selama 3 hari.');
end;

procedure Tf_peminjaman.Pengembalian1Click(Sender: TObject);
begin
  with dm1.table_peminjaman do
  begin
    edit;
    FieldValues['keterangan'] := InputBox('Input','Keterangan','');
    // Merubah status peminjaman menjadi selesai (Arsip)
    FieldValues['status'] := 'Arsip';

    DateSeparator := '/';
    ShortDateFormat := 'dd/mm/yyyy';
    // Tanggal Pengembalian
    FieldValues['tanggal_kembali'] := DateToStr(Date);
    Post;
    First;

    // Refresh Table Peminjaman
    Active := False;
    Active := True;
  end;
  ShowMessage('Pengembalian berhasil.');
end;

procedure Tf_peminjaman.Hapus1Click(Sender: TObject);
begin
  if MessageDlg('Lanjutkan hapus peminjaman ?', mtConfirmation, [mbYes,mbCancel],0) = mryes then
    begin
      with dm1.Query do
      begin
        Close;
        SQL.Clear;
        // Menghapus data peminjaman menggunakan Query SQL        
        SQL.Text := 'DELETE FROM peminjaman WHERE no_pinjam = ' + IntToStr(dg_peminjaman.Fields[0].Value);
        ExecSQL;
      end;
    end;
    with dm1.table_peminjaman do
    begin
      // Refresh Table Peminjaman
      Active := False;
      Active := True;
    end;
    ShowMessage('Data berhasil dihapus.');
end;

procedure Tf_peminjaman.edt_cariChange(Sender: TObject);
begin
  with dm1.table_peminjaman do
  begin
    if (edt_cari.Text <> '') then
    begin
      Active := False;
      CommandText := 'SELECT * FROM ((peminjaman INNER JOIN anggota ON peminjaman.id_anggota=anggota.id_anggota) INNER JOIN data_buku ON peminjaman.id_buku=data_buku.id_buku) WHERE status = "Diproses" AND no_pinjam LIKE "%'+edt_cari.Text+'%" OR status = "Diproses" AND nama LIKE "%'+edt_cari.Text+'%"';
      Active := True;
    end
    else if (edt_cari.Text = '') then
    begin
      Active := False;
      CommandText := 'SELECT * FROM ((peminjaman INNER JOIN anggota ON peminjaman.id_anggota=anggota.id_anggota) INNER JOIN data_buku ON peminjaman.id_buku=data_buku.id_buku) WHERE status = "Diproses"';
      Active := True;
    end;
  end;
end;

procedure Tf_peminjaman.Logout1Click(Sender: TObject);
begin
  f_profile.showmodal;
end;

end.
