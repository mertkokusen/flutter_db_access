class PdaPhotoActivityDetail {
  int idPhotoActivityDetail;
  bool valid;
  int idPhotoActivity;
  int idPhotoType;
  bool flBefore;
  bool flAfter;
  String dsUniqueKey;
  bool vrFlSent;
  
  PdaPhotoActivityDetail({
    this.idPhotoActivityDetail,
    this.valid,
    this.idPhotoActivity,
    this.idPhotoType,
    this.flBefore,
    this.flAfter,
    this.dsUniqueKey,
    this.vrFlSent,
  });

  static PdaPhotoActivityDetail fromMap(Map<String, dynamic> json) {
    return PdaPhotoActivityDetail()
      ..idPhotoActivityDetail = json['idPhotoActivityDetail'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..idPhotoActivity = json['idPhotoActivity'] as int
      ..idPhotoType = json['idPhotoType'] as int
      ..flBefore = json['flBefore'] == 1 ? true : false
      ..flAfter = json['flAfter'] == 1 ? true : false
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idPhotoActivityDetail': idPhotoActivityDetail,
        'valid': valid,
        'idPhotoActivity': idPhotoActivity,
        'idPhotoType': idPhotoType,
        'flBefore': flBefore,
        'flAfter': flAfter,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
      };
}