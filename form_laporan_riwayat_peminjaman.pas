unit form_laporan_riwayat_peminjaman;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  Tf_laporan_riwayat_peminjaman = class(TForm)
    QuickRep1: TQuickRep;
    QrBand13: TQRBand;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    QrBand11: TQRBand;
    qrdbtxtno_pinjam: TQRDBText;
    qrdbtxtnama: TQRDBText;
    qrdbtxtjudul: TQRDBText;
    qrdbtxttanggal_pinjam: TQRDBText;
    qrdbtxttanggal_kembali: TQRDBText;
    QrBand12: TQRBand;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl8: TQRLabel;
    qrdbtxttanggal_kembali1: TQRDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_laporan_riwayat_peminjaman: Tf_laporan_riwayat_peminjaman;

implementation

uses
  datamodule;

{$R *.dfm}

end.
