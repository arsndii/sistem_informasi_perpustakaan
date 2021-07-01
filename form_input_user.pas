unit form_input_user;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tf_input_user = class(TForm)
    lbl_judul: TLabel;
    l_2: TLabel;
    edt_username: TEdit;
    l_3: TLabel;
    edt_nama: TEdit;
    l_4: TLabel;
    edt_password: TEdit;
    l_5: TLabel;
    cb_level: TComboBox;
    btn_simpan: TButton;
    btn_batal: TButton;
    procedure btn_batalClick(Sender: TObject);
    procedure btn_simpanClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_input_user: Tf_input_user;

implementation

uses
  datamodule;

{$R *.dfm}

procedure Tf_input_user.btn_batalClick(Sender: TObject);
begin
  edt_username.Text := '';
  edt_nama.Text := '';
  edt_password.Text := '';
  cb_level.Text := '';

  lbl_judul.Caption := 'Form Input User';
  f_input_user.Caption := 'Form Input User';
  edt_username.SetFocus;
end;

procedure Tf_input_user.btn_simpanClick(Sender: TObject);
begin
  with dm1.table_user do
  begin
    if lbl_judul.Caption = 'Form Input User' then
      begin
        Append;
        FieldValues['username'] := edt_username.Text;
      end
    else Edit;

    FieldValues['nama'] := edt_nama.Text;
    FieldValues['password'] := edt_password.Text;
    FieldValues['level'] := cb_level.Text;
    Post;
    First;
  end;
  btn_batalClick(Sender);
  f_input_user.close;
end;

procedure Tf_input_user.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  btn_batalClick(Sender);
end;

end.
