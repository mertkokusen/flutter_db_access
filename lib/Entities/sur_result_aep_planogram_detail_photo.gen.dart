class SurResultAepPlanogramDetailPhoto {
  int idResultAepPlanogramDetailPhoto;
  bool valid;
  int idResultAepPlanogram;
  int idResultAepPlanogramDetail;
  String dsUniqueKey;
  bool vrFlSent;
  
  SurResultAepPlanogramDetailPhoto({
    this.idResultAepPlanogramDetailPhoto,
    this.valid,
    this.idResultAepPlanogram,
    this.idResultAepPlanogramDetail,
    this.dsUniqueKey,
    this.vrFlSent,
  });

  static SurResultAepPlanogramDetailPhoto fromMap(Map<String, dynamic> json) {
    return SurResultAepPlanogramDetailPhoto()
      ..idResultAepPlanogramDetailPhoto = json['idResultAepPlanogramDetailPhoto'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..idResultAepPlanogram = json['idResultAepPlanogram'] as int
      ..idResultAepPlanogramDetail = json['idResultAepPlanogramDetail'] as int
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idResultAepPlanogramDetailPhoto': idResultAepPlanogramDetailPhoto,
        'valid': valid,
        'idResultAepPlanogram': idResultAepPlanogram,
        'idResultAepPlanogramDetail': idResultAepPlanogramDetail,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
      };
}