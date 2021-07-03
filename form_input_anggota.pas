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
    procedure btn_simpanClick(Sender: TObject);
    procedure btn_batalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_input_anggota: Tf_input_anggota;

implementation

uses
  datamodule;

{$R *.dfm}

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
  edt_id_anggota.Text := '';
  edt_nama.Text := '';
  edt_alamat.Text := '';
  edt_no_telp.Text := '';

  lbl_judul.Caption := 'Form Input Anggota';
  f_input_anggota.Caption := 'Form Input Anggota';
  edt_id_anggota.SetFocus;
end;

procedure Tf_input_anggota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  btn_batalClick(Sender);
end;

end.
