unit form_anggota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Menus;

type
  Tf_anggota = class(TForm)
    dg_anggota: TDBGrid;
    grp1: TGroupBox;
    edt_1: TEdit;
    lbl__1: TLabel;
    PopupMenu1: TPopupMenu;
    Edit1: TMenuItem;
    Hapus1: TMenuItem;
    btn_1: TButton;
    procedure btn_1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Hapus1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_anggota: Tf_anggota;

implementation

uses
  datamodule, form_input_anggota;

{$R *.dfm}

procedure Tf_anggota.btn_1Click(Sender: TObject);
begin
  f_input_anggota.showmodal;
end;

procedure Tf_anggota.Edit1Click(Sender: TObject);
begin
with f_input_anggota do
  begin
    lbl_judul.Caption := 'Form Edit Anggota';

    edt_id_anggota.Text := dg_anggota.Fields[0].Value;
    edt_nama.Text := dg_anggota.Fields[1].Value;
    edt_alamat.Text := dg_anggota.Fields[2].Value;
    edt_no_telp.Text := dg_anggota.Fields[3].Value;


    edt_id_anggota.ReadOnly := True;
    ShowModal;
  end;
end;

procedure Tf_anggota.Hapus1Click(Sender: TObject);
begin
  if MessageDlg('Lanjutkan hapus anggota ?', mtConfirmation, [mbYes,mbCancel],0) = mryes then
    begin
      with dm1.table_anggota do
      begin
        Delete;
        First;
      end;
    end;
end;

end.
