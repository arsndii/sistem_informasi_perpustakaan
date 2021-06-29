unit form_login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tf_login = class(TForm)
    l_1: TLabel;
    edt_username: TEdit;
    l_2: TLabel;
    edt_password: TEdit;
    btn_login: TButton;
    btn_close: TButton;
    procedure btn_loginClick(Sender: TObject);
    procedure btn_closeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_login: Tf_login;

implementation

uses
  datamodule, form_peminjaman, form_user;

{$R *.dfm}

procedure Tf_login.btn_loginClick(Sender: TObject);
begin
  with dm1 do
  begin
    login.Refresh;
    login.First;
    while not login.Eof do
    begin
//    // Login Admin
      if (edt_username.Text = login['username']) and (edt_password.Text = login['password']) and (login['level'] = 'admin') then
      begin
        f_peminjaman.Show;
        edt_username.Text := '';
        edt_password.Text := '';
        f_login.Hide;
        exit;
      end;
      // Login Administrator
      login.Next;
      if (edt_username.Text = login['username']) and (edt_password.Text = login['password']) and (login['level'] = 'administrator') then
      begin
        f_user.Show;
        edt_username.Text := '';
        edt_password.Text := '';
        f_login.Hide;
        exit;
      end;
      // Login Gagal
      if login.Eof then
      begin
        Application.MessageBox('Login gagal, periksa kembali username dan password anda.','Error',MB_OK);
        edt_username.Text := '';
        edt_password.Text := '';
        edt_username.SetFocus
      end;
    end;
  end;
end;

procedure Tf_login.btn_closeClick(Sender: TObject);
begin
  application.Terminate;
end;

end.
