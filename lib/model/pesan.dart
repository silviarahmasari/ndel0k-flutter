class Pesan {
  int? id;
  String nama_movies;
  String kode_unik;
  String nomor_kursi;
  String lokasi_bioskop;
  String tanggal_film;
  String jam_film;
  String total_harga;


  Pesan(this.nama_movies, this.kode_unik, this.nomor_kursi, this.lokasi_bioskop, this.tanggal_film, this.jam_film, this.total_harga, {this.id});

  Pesan.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        nama_movies = json['nama_movies'],
        kode_unik = json['kode_unik'],
        nomor_kursi = json['nomor_kursi'],
        lokasi_bioskop = json['lokasi_bioskop'],
        tanggal_film = json['tanggal_film'],
        jam_film = json['jam_film'],
        total_harga = json['total_harga'];
}