/* class Mahasiswa {
  NoooyEMsEgh9zzoyviv? noooyEMsEgh9zzoyviv;
  NoooyEMsEgh9zzoyviv? nop41uYtDBBsNreAB7;

  Mahasiswa({this.noooyEMsEgh9zzoyviv, this.nop41uYtDBBsNreAB7});

  Mahasiswa.fromJson(Map<String, dynamic> json) {
    noooyEMsEgh9zzoyviv = json['-NoooyEMsEgh9zzoyviv'] != null
        ? NoooyEMsEgh9zzoyviv?.fromJson(json['-NoooyEMsEgh9zzoyviv'])
        : null;
    nop41uYtDBBsNreAB7 = json['-Nop41uYtDBBs_NreAB7'] != null
        ? NoooyEMsEgh9zzoyviv?.fromJson(json['-Nop41uYtDBBs_NreAB7'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (noooyEMsEgh9zzoyviv != null) {
      data['-NoooyEMsEgh9zzoyviv'] = noooyEMsEgh9zzoyviv?.toJson();
    }
    if (nop41uYtDBBsNreAB7 != null) {
      data['-Nop41uYtDBBs_NreAB7'] = nop41uYtDBBsNreAB7?.toJson();
    }
    return data;
  }
} */

class Mahasiswa {
  String? angkatan;
  String? ipk;
  String? nama;
  String? nim;
  String? prodi;

  Mahasiswa(
      {this.angkatan, this.ipk, this.nama, this.nim, this.prodi});

  Mahasiswa.fromJson(Map<String, dynamic> json) {
    angkatan = json['angkatan'];
    ipk = json['ipk'];
    nama = json['nama'];
    nim = json['nim'];
    prodi = json['prodi'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['angkatan'] = angkatan;
    data['ipk'] = ipk;
    data['nama'] = nama;
    data['nim'] = nim;
    data['prodi'] = prodi;
    return data;
  }
}
