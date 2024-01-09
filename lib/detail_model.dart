class DetailModel {
  String? status;
  String? message;
  Data? data;

  DetailModel({this.status, this.message, this.data});

  DetailModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  String? courseName;
  String? pengajar;
  String? category;
  String? deskripsi;
  int? harga;
  int? durasi;

  Data(
      {this.id,
      this.courseName,
      this.pengajar,
      this.category,
      this.deskripsi,
      this.harga,
      this.durasi});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    courseName = json['course_name'];
    pengajar = json['pengajar'];
    category = json['category'];
    deskripsi = json['deskripsi'];
    harga = json['harga'];
    durasi = json['durasi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['course_name'] = this.courseName;
    data['pengajar'] = this.pengajar;
    data['category'] = this.category;
    data['deskripsi'] = this.deskripsi;
    data['harga'] = this.harga;
    data['durasi'] = this.durasi;
    return data;
  }
}
