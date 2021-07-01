unit form_laporan_peminjaman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TF_laporan_peminjaman = class(TForm)
    QuickRep1: TQuickRep;
    QrBand: TQRBand;
    QrBand11: TQRBand;
    QrBand12: TQRBand;
    qrdbtxtno_pinjam: TQRDBText;
    qrdbtxtnama: TQRDBText;
    qrdbtxtjudul: TQRDBText;
    qrdbtxttanggal_pinjam: TQRDBText;
    qrdbtxttanggal_kembali: TQRDBText;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
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
  F_laporan_peminjaman: TF_laporan_peminjaman;

implementation

uses
  datamodule;

{$R *.dfm}

end.
