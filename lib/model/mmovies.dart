class Mmovies {
  int id;
  String mnama;
  String sutradara;
  String produksi;
  String sinopsis;
  String file_name;
  int status;


  Mmovies(this.id, this.mnama, this.sutradara, this.produksi, this.sinopsis, this.file_name, this.status);

  Mmovies.fromJson(Map<String, dynamic> json) :
        id = json['id'],
        mnama = json['mnama'],
        sutradara = json['sutradara'],
        produksi = json['produksi'],
        sinopsis = json['sinopsis'],
        file_name = json['file_name'],
        status = json['status'];

}