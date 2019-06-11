class SurResultAepPlanogramDetail {
  int idResultAepPlanogramDetail;
  bool valid;
  int idResultAepPlanogram;
  int idAepPlanogram;
  int idAepPlanogramDetail;
  bool flApproved;
  String dsUniqueKey;
  bool vrFlSent;
  
  SurResultAepPlanogramDetail({
    this.idResultAepPlanogramDetail,
    this.valid,
    this.idResultAepPlanogram,
    this.idAepPlanogram,
    this.idAepPlanogramDetail,
    this.flApproved,
    this.dsUniqueKey,
    this.vrFlSent,
  });

  static SurResultAepPlanogramDetail fromMap(Map<String, dynamic> json) {
    return SurResultAepPlanogramDetail()
      ..idResultAepPlanogramDetail = json['idResultAepPlanogramDetail'] as int
      ..valid = json['valid'] == 1 ? true : false
      ..idResultAepPlanogram = json['idResultAepPlanogram'] as int
      ..idAepPlanogram = json['idAepPlanogram'] as int
      ..idAepPlanogramDetail = json['idAepPlanogramDetail'] as int
      ..flApproved = json['flApproved'] == 1 ? true : false
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idResultAepPlanogramDetail': idResultAepPlanogramDetail,
        'valid': valid,
        'idResultAepPlanogram': idResultAepPlanogram,
        'idAepPlanogram': idAepPlanogram,
        'idAepPlanogramDetail': idAepPlanogramDetail,
        'flApproved': flApproved,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
      };
}