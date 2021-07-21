class Provinsi{
  String nama;
  int kasusPos;
  int kasusSem;
  int kasusMen;

  Provinsi({
    required this.nama,
    required this.kasusPos,
    required this.kasusSem,
    required this.kasusMen,
  });
}

var provinsiList = [
  Provinsi(nama: "DKI Jakarta", kasusPos: 406205, kasusSem: 393166, kasusMen: 6625),
  Provinsi(nama: "Jawa Barat", kasusPos: 277553, kasusSem: 243650, kasusMen: 3678),
  Provinsi(nama: "Jawa Tengah", kasusPos: 183027, kasusSem: 162823, kasusMen: 8001),
  Provinsi(nama: "Jawa Timur", kasusPos: 146808, kasusSem: 134525, kasusMen: 10600),
  Provinsi(nama: "Kalimantan Timur", kasusPos: 68136, kasusSem: 64718, kasusMen: 1631),
  Provinsi(nama: "Sulawesi Selatan", kasusPos: 61419, kasusSem: 60164, kasusMen: 931),
  Provinsi(nama: "Banten", kasusPos: 47101, kasusSem: 43892, kasusMen: 1200),
  Provinsi(nama: "Bali", kasusPos: 44236, kasusSem: 41608, kasusMen: 1317),
  Provinsi(nama: "Riau", kasusPos: 42698, kasusSem: 37374, kasusMen: 1050),
];