class PdaPhotoQuality {
  int idPhotoQuality;
  String dsPhotoQuality;
  int mtWidth;
  int mtHeight;
  
  PdaPhotoQuality({
    this.idPhotoQuality,
    this.dsPhotoQuality,
    this.mtWidth,
    this.mtHeight,
  });

  static PdaPhotoQuality fromMap(Map<String, dynamic> json) {
    return PdaPhotoQuality()
      ..idPhotoQuality = json['idPhotoQuality'] as int
      ..dsPhotoQuality = json['dsPhotoQuality'] as String
      ..mtWidth = json['mtWidth'] as int
      ..mtHeight = json['mtHeight'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idPhotoQuality': idPhotoQuality,
        'dsPhotoQuality': dsPhotoQuality,
        'mtWidth': mtWidth,
        'mtHeight': mtHeight,
      };
}