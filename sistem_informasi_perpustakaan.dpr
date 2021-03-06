program sistem_informasi_perpustakaan;

uses
  Forms,
  datamodule in 'database\datamodule.pas' {dm1: TDataModule},
  form_peminjaman in 'form_peminjaman.pas' {f_peminjaman},
  form_data_buku in 'form_data_buku.pas' {f_data_buku},
  form_anggota in 'form_anggota.pas' {f_anggota},
  form_riwayat_peminjaman in 'form_riwayat_peminjaman.pas' {f_riwayat_peminjaman},
  form_input_peminjaman in 'form_input_peminjaman.pas' {f_input_peminjaman},
  form_input_anggota in 'form_input_anggota.pas' {f_input_anggota},
  form_laporan_peminjaman in 'form_laporan_peminjaman.pas' {F_laporan_peminjaman},
  form_laporan_anggota in 'form_laporan_anggota.pas' {f_laporan_anggota},
  form_input_buku in 'form_input_buku.pas' {f_input_buku},
  forn_laporan_buku in 'forn_laporan_buku.pas' {f_laporan_buku},
  form_laporan_riwayat_peminjaman in 'form_laporan_riwayat_peminjaman.pas' {f_laporan_riwayat_peminjaman},
  form_profile in '..\pemrograman_visual_1\UTS\form_profile.pas' {f_profile};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tdm1, dm1);
  Application.CreateForm(Tf_peminjaman, f_peminjaman);
  Application.CreateForm(Tf_data_buku, f_data_buku);
  Application.CreateForm(Tf_anggota, f_anggota);
  Application.CreateForm(Tf_riwayat_peminjaman, f_riwayat_peminjaman);
  Application.CreateForm(Tf_input_peminjaman, f_input_peminjaman);
  Application.CreateForm(Tf_input_anggota, f_input_anggota);
  Application.CreateForm(TF_laporan_peminjaman, F_laporan_peminjaman);
  Application.CreateForm(Tf_laporan_anggota, f_laporan_anggota);
  Application.CreateForm(Tf_input_buku, f_input_buku);
  Application.CreateForm(Tf_laporan_buku, f_laporan_buku);
  Application.CreateForm(Tf_laporan_riwayat_peminjaman, f_laporan_riwayat_peminjaman);
  Application.CreateForm(Tf_profile, f_profile);
  Application.Run;
end.
