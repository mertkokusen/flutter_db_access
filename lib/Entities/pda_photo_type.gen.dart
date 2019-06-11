class PdaPhotoType {
  int idPhotoType;
  String dsPhotoType;
  bool flDefault;
  
  PdaPhotoType({
    this.idPhotoType,
    this.dsPhotoType,
    this.flDefault,
  });

  static PdaPhotoType fromMap(Map<String, dynamic> json) {
    return PdaPhotoType()
      ..idPhotoType = json['idPhotoType'] as int
      ..dsPhotoType = json['dsPhotoType'] as String
      ..flDefault = json['flDefault'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idPhotoType': idPhotoType,
        'dsPhotoType': dsPhotoType,
        'flDefault': flDefault,
      };
}