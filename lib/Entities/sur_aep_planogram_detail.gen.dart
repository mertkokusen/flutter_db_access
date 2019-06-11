class SurAepPlanogramDetail {
  int idAepPlanogramDetail;
  int idAepPlanogram;
  String dsDescription;
  String dsUniqueKey;
  
  SurAepPlanogramDetail({
    this.idAepPlanogramDetail,
    this.idAepPlanogram,
    this.dsDescription,
    this.dsUniqueKey,
  });

  static SurAepPlanogramDetail fromMap(Map<String, dynamic> json) {
    return SurAepPlanogramDetail()
      ..idAepPlanogramDetail = json['idAepPlanogramDetail'] as int
      ..idAepPlanogram = json['idAepPlanogram'] as int
      ..dsDescription = json['dsDescription'] as String
      ..dsUniqueKey = json['dsUniqueKey'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idAepPlanogramDetail': idAepPlanogramDetail,
        'idAepPlanogram': idAepPlanogram,
        'dsDescription': dsDescription,
        'dsUniqueKey': dsUniqueKey,
      };
}