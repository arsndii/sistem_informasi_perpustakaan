unit form_laporan_anggota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  Tf_laporan_anggota = class(TForm)
    QrBand: TQRBand;
    QrBand11: TQRBand;
    QrBand12: TQRBand;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrdbtxtid_anggota: TQRDBText;
    qrdbtxtnama: TQRDBText;
    qrdbtxtalamat: TQRDBText;
    qrdbtxtno_telp: TQRDBText;
    qrdbtxttanggal_daftar: TQRDBText;
    QuickRep1: TQuickRep;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_laporan_anggota: Tf_laporan_anggota;

implementation

uses
  datamodule;

{$R *.dfm}

end.
