unit form_input_peminjaman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tf_input_peminjaman = class(TForm)
    lbl_judul: TLabel;
    lbl_2: TLabel;
    edt_no_pinjam: TEdit;
    btn_simpan: TButton;
    btn_batal: TButton;
    grp1: TGroupBox;
    lbl_3: TLabel;
    lbl_1: TLabel;
    cb_id_anggota: TComboBox;
    edt_nama: TEdit;
    grp2: TGroupBox;
    lbl_4: TLabel;
    lbl_5: TLabel;
    cb_id_buku: TComboBox;
    edt_judul: TEdit;
    procedure FormActivate(Sender: TObject);
    procedure btn_simpanClick(Sender: TObject);
    procedure btn_batalClick(Sender: TObject);
    procedure cb_id_anggotaChange(Sender: TObject);
    procedure cb_id_bukuChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_input_peminjaman: Tf_input_peminjaman;

implementation

uses datamodule, form_peminjaman;

{$R *.dfm}

procedure Tf_input_peminjaman.FormActivate(Sender: TObject);
var
  kodeTerbesar : Integer;
begin
  if lbl_judul.Caption = 'Form Input Peminjaman' then
  begin
    with dm1.Query do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT max(no_pinjam) as kodeTerbesar FROM peminjaman'); // Mencari no_pinjam tertinggi
      Prepared;
      if Prepared = true then
      begin
        Open;
        kodeTerbesar := fieldbyname('kodeTerbesar').AsInteger
      end;
    end;
    kodeTerbesar := kodeTerbesar + 1; // Menambahkan 1 pada kodeTertinggi
    edt_no_pinjam.Text := IntToStr(kodeTerbesar);
    edt_no_pinjam.ReadOnly := True;
  end;

  // ComboBox ID Anggota
  with dm1.Query do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT id_anggota FROM anggota');
    Prepared;
    if Prepared = true then
    begin
      Open;
      cb_id_anggota.Clear;
      while not dm1.Query.Eof do
      begin
        cb_id_anggota.Items.Add(dm1.Query.FieldByName('id_anggota').AsString);
        dm1.Query.Next;
      end;
    end;
  end;

  // ComboBox ID Buku
  with dm1.Query do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT id_buku FROM data_buku');
    Prepared;
    if Prepared = true then
    begin
      Open;
      cb_id_buku.Clear;
      while not dm1.Query.Eof do
      begin
        cb_id_buku.Items.Add(dm1.Query.FieldByName('id_buku').AsString);
        dm1.Query.Next;
      end;
    end;
  end;

end;

procedure Tf_input_peminjaman.btn_simpanClick(Sender: TObject);
begin
  with dm1.table_peminjaman do
  begin
    Append;
    FieldValues['no_pinjam'] := edt_no_pinjam.Text;

    // Tanggal
    DateSeparator := '/';
    ShortDateFormat := 'dd/mm/yyyy';
    FieldValues['tanggal_pinjam'] := DateToStr(Date);
    FieldValues['batas_waktu'] := DateToStr(Date+7); // Batas peminjaman 7 hari

    FieldValues['peminjaman.id_anggota'] := cb_id_anggota.Text;
    FieldValues['peminjaman.id_buku'] := cb_id_buku.Text;
    FieldValues['status'] := 'Diproses';
    Post;
    First;

    // Refresh Table Peminjaman
    Active := False;
    Active := True;
  end;
  btn_batalClick(Sender);
  f_input_peminjaman.close;
end;

procedure Tf_input_peminjaman.btn_batalClick(Sender: TObject);
begin
  cb_id_anggota.Text := '';
  cb_id_buku.Text := '';
  edt_nama.Text := '';
  edt_judul.Text := '';
end;

procedure Tf_input_peminjaman.cb_id_anggotaChange(Sender: TObject);
begin
  with dm1.Query do
  begin
    Close;
    SQL.Clear;
    // Mencari nama anggota berdasarkan id_anggota
    SQL.Add('SELECT * FROM anggota WHERE id_anggota = "'+ cb_id_anggota.Text +'" ');
    Prepared;
    if Prepared = true then
    begin
      Open;
      edt_nama.Text := fieldbyname('nama').AsString
    end;
  end;
end;

procedure Tf_input_peminjaman.cb_id_bukuChange(Sender: TObject);
begin
  with dm1.Query do
  begin
    Close;
    SQL.Clear;
    // Mencari judul buku berdasarkan id_buku
    SQL.Add('SELECT judul FROM data_buku WHERE id_buku = "'+cb_id_buku.Text+'" ');
    Prepared;
    if Prepared = true then
    begin
      Open;
      edt_judul.Text := fieldbyname('judul').AsString
    end;
  end;
end;

end.
