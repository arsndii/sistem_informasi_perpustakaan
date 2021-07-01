unit forn_laporan_buku;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  Tf_laporan_buku = class(TForm)
    QuickRep1: TQuickRep;
    QrBand13: TQRBand;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    QrBand11: TQRBand;
    qrdbtxtid_anggota: TQRDBText;
    qrdbtxtnama: TQRDBText;
    qrdbtxtalamat: TQRDBText;
    qrdbtxtno_telp: TQRDBText;
    qrdbtxttanggal_daftar: TQRDBText;
    QrBand12: TQRBand;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_laporan_buku: Tf_laporan_buku;

implementation

uses
  datamodule;

{$R *.dfm}

end.
