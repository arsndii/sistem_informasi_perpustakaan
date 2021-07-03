unit form_input_buku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tf_input_buku = class(TForm)
    lbl_judul: TLabel;
    lbl_1: TLabel;
    lbl_2: TLabel;
    lbl_3: TLabel;
    lbl_4: TLabel;
    edt_id_buku: TEdit;
    edt_judul: TEdit;
    edt_penulis: TEdit;
    edt_penerbit: TEdit;
    btn_simpan: TButton;
    btn_batal: TButton;
    lbl_5: TLabel;
    edt_tahun_terbit: TEdit;
    procedure btn_simpanClick(Sender: TObject);
    procedure btn_batalClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_input_buku: Tf_input_buku;

implementation

uses
  datamodule;

{$R *.dfm}

procedure Tf_input_buku.btn_simpanClick(Sender: TObject);
begin
  with dm1.table_data_buku do
  begin
    if lbl_judul.Caption = 'Form Input Buku' then
      begin
        Append;
        FieldValues['id_buku'] := edt_id_buku.Text;
      end
    else Edit;

    FieldValues['judul'] := edt_judul.Text;
    FieldValues['penulis'] := edt_penulis.Text;
    FieldValues['penerbit'] := edt_penerbit.Text;
    FieldValues['tahun_terbit'] := edt_tahun_terbit.Text;
    Post;
    First;
  end;
  btn_batalClick(Sender);
  f_input_buku.close;
end;

procedure Tf_input_buku.btn_batalClick(Sender: TObject);
begin
  edt_id_buku.Text := '';
  edt_judul.Text := '';
  edt_penulis.Text := '';
  edt_penerbit.Text := '';
  edt_tahun_terbit.Text := '';

  lbl_judul.Caption := 'Form Input Buku';
  f_input_buku.Caption := 'Form Input Buku';
  edt_id_buku.SetFocus;
end;

procedure Tf_input_buku.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  btn_batalClick(Sender);
end;

end.
