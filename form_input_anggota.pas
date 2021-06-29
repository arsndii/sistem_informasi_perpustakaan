unit form_input_anggota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tf_input_anggota = class(TForm)
    lbl_judul: TLabel;
    lbl_1: TLabel;
    edt_id_anggota: TEdit;
    lbl_2: TLabel;
    edt_nama: TEdit;
    lbl_3: TLabel;
    edt_alamat: TEdit;
    lbl_4: TLabel;
    edt_no_telp: TEdit;
    btn_simpan: TButton;
    btn_batal: TButton;
    procedure FormActivate(Sender: TObject);
    procedure btn_simpanClick(Sender: TObject);
    procedure btn_batalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_input_anggota: Tf_input_anggota;

implementation

uses
  datamodule, form_input_user;

{$R *.dfm}

procedure Tf_input_anggota.FormActivate(Sender: TObject);
var
  kodeTerbesar : Integer;
begin
  if lbl_judul.Caption = 'Form Input Anggota' then
    begin
      with dm1.Query do
      begin
        Close;
        SQL.Clear;
        SQL.Add('SELECT max(id_anggota) as kodeTerbesar FROM anggota'); // Mencari id_anggota tertinggi
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
      edt_id_anggota.Text := IntToStr(kodeTerbesar);
      edt_id_anggota.ReadOnly := True;
      edt_nama.SetFocus;
    end;
end;

procedure Tf_input_anggota.btn_simpanClick(Sender: TObject);
begin
  with dm1.table_anggota do
  begin
    if lbl_judul.Caption = 'Form Input Anggota' then
      begin
        Append;
        FieldValues['id_anggota'] := edt_id_anggota.Text;

        // Tanggal
        DateSeparator := '-';
        ShortDateFormat := 'dd/mm/yyyy';
        FieldValues['tanggal_daftar'] := DateToStr(Date);
      end
    else Edit;

    FieldValues['nama'] := edt_nama.Text;
    FieldValues['alamat'] := edt_alamat.Text;
    FieldValues['no_telp'] := edt_no_telp.Text;
    Post;
    First;
  end;
  btn_batalClick(Sender);
  f_input_anggota.close;
end;

procedure Tf_input_anggota.btn_batalClick(Sender: TObject);
begin
  edt_nama.Text := '';
  edt_alamat.Text := '';
  edt_no_telp.Text := '';

  lbl_judul.Caption := 'Form Input Anggota';
  edt_nama.SetFocus;
end;

end.
