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
    lbl_3: TLabel;
    lbl_4: TLabel;
    btn_simpan: TButton;
    btn_batal: TButton;
    cb_id_anggota: TComboBox;
    cb_id_buku: TComboBox;
    procedure FormActivate(Sender: TObject);
    procedure btn_simpanClick(Sender: TObject);
    procedure btn_batalClick(Sender: TObject);
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
        SQL.Add('SELECT max(no_pinjam) as kodeTerbesar FROM peminjaman'); // Mencari id_anggota tertinggi
        Prepared;
        if Prepared = true then
        begin
          Open;
          if (fieldbyname('kodeTerbesar').AsString <> '') then
            kodeTerbesar := fieldbyname('kodeTerbesar').AsInteger
          else
            kodeTerbesar := 0;
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
    SQL.Add('SELECT id_anggota FROM anggota'); // Mencari id_anggota tertinggi
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
    SQL.Add('SELECT id_buku FROM data_buku'); // Mencari id_anggota tertinggi
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
    if lbl_judul.Caption = 'Form Input Peminjaman' then
      begin
        Append;
        FieldValues['no_pinjam'] := edt_no_pinjam.Text;

        // Tanggal
        DateSeparator := '-';
        ShortDateFormat := 'dd/mm/yyyy';
        FieldValues['tanggal_pinjam'] := DateToStr(Date);
      end
    else Edit;

    FieldValues['peminjaman.id_anggota'] := cb_id_anggota.Text;
    FieldValues['peminjaman.id_buku'] := cb_id_buku.Text;
    FieldValues['status'] := 'Diproses';
    Post;
    First;
  end;

 // Refresh Table Peminjaman  
  with dm1.table_peminjaman do
  begin
    Active := False;
    Active := True;
    f_peminjaman.dg_peminjaman.Refresh;
  end;

  btn_batalClick(Sender);
  f_input_peminjaman.close;
end;

procedure Tf_input_peminjaman.btn_batalClick(Sender: TObject);
begin
  cb_id_anggota.Text := '';
  cb_id_buku.Text := '';

  lbl_judul.Caption := 'Form Input Peminjaman';
end;

end.
