class RumahSakit {
  String nama;
  String alamat;
  String jarak;
  String notelp;

  RumahSakit({
    required this.nama,
    required this.alamat,
    required this.jarak,
    required this.notelp,
  });
}

var rumahSakitList = [
  RumahSakit(
      nama: 'RSUD Jalin Kasih Semata',
      alamat:
          'Jl. Persahabatan Raya No.1, RT.16/RW.13, Rawamangun, Kec. Pulo Gadung, Jakarta Timur',
      jarak: '615',
      notelp: '(021) 4891708'),
  RumahSakit(
      nama: 'RS Premier Jatinegara',
      alamat:
          'Jl. Jatinegara Timur No.85-87, RT.10/RW.2, Jakarta Timur',
      jarak: '655',
      notelp: '(0380) 832892'),
  RumahSakit(
      nama: 'Harum Sisma Medika Hospital',
      alamat:
          'Jl. S. Kalimalang Tarum Barat, RT.1/RW.13, Cipinang Melayu, Jakarta Timur',
      jarak: '630',
      notelp: '(021) 8617212'),
  RumahSakit(
      nama: 'Setia Mitra Hospital',
      alamat:
          'Jl. RS. Fatmawati Raya No.80-82, RT.3/RW.10, Cilandak Bar., Jakarta Selatan',
      jarak: '650',
      notelp: '(021) 7656000'),
  RumahSakit(
      nama: 'Premier Bintaro Hospital',
      alamat:
          'Jl. Moh. Husni Thamrin No.1, Pd. Jaya, Kec. Pd. Aren, Kota Tangerang Selatan',
      jarak: '655',
      notelp: '(021) 27625500'),
  RumahSakit(
      nama: 'Rumah Sakit Cinere',
      alamat:
          'Jl. Maribaya No.1, Pangkalan Jati, Kec. Cinere, Kota Depok',
      jarak: '703',
      notelp: '(021) 7545488'),
];
