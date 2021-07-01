unit form_user;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Menus;

type
  Tf_user = class(TForm)
    dg_user: TDBGrid;
    btn_1: TButton;
    PopupMenu1: TPopupMenu;
    Edit1: TMenuItem;
    Hapus1: TMenuItem;
    mm1: TMainMenu;
    Logout1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Hapus1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_user: Tf_user;

implementation

uses
  datamodule, form_input_user, form_peminjaman, form_login;

{$R *.dfm}

procedure Tf_user.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure Tf_user.btn_1Click(Sender: TObject);
begin
  f_input_user.showmodal;
end;

procedure Tf_user.Edit1Click(Sender: TObject);
begin
with f_input_user do
  begin
    lbl_judul.Caption := 'Form Edit User';
    f_input_user.Caption := 'Form Edit User';

    edt_username.Text := dg_user.Fields[0].Value;
    edt_nama.Text := dg_user.Fields[1].Value;
    edt_password.Text := dg_user.Fields[3].Value;
    cb_level.Text := dg_user.Fields[2].Value;

    edt_username.ReadOnly := True;
    ShowModal;
  end;
end;

procedure Tf_user.Hapus1Click(Sender: TObject);
begin
  if MessageDlg('Lanjutkan hapus user ?', mtConfirmation, [mbYes,mbCancel],0) = mryes then
    begin
      with dm1.table_user do
      begin
        Delete;
        First;
      end;
    end;
end;

procedure Tf_user.Logout1Click(Sender: TObject);
begin
  f_user.Hide;
  f_login.Show;
end;

end.
