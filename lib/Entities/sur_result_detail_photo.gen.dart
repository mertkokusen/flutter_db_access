class SurResultDetailPhoto {
  int idResultDetailPhoto;
  int idResultDetail;
  bool valid;
  String dsUniqueKey;
  bool vrFlSent;
  
  SurResultDetailPhoto({
    this.idResultDetailPhoto,
    this.idResultDetail,
    this.valid,
    this.dsUniqueKey,
    this.vrFlSent,
  });

  static SurResultDetailPhoto fromMap(Map<String, dynamic> json) {
    return SurResultDetailPhoto()
      ..idResultDetailPhoto = json['idResultDetailPhoto'] as int
      ..idResultDetail = json['idResultDetail'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idResultDetailPhoto': idResultDetailPhoto,
        'idResultDetail': idResultDetail,
        'valid': valid,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
      };
}