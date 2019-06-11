class SurSurveyCategory {
  int idSurveyCategory;
  String dsSurveyCategory;
  int mtDisplayOrder;
  
  SurSurveyCategory({
    this.idSurveyCategory,
    this.dsSurveyCategory,
    this.mtDisplayOrder,
  });

  static SurSurveyCategory fromMap(Map<String, dynamic> json) {
    return SurSurveyCategory()
      ..idSurveyCategory = json['idSurveyCategory'] as int
      ..dsSurveyCategory = json['dsSurveyCategory'] as String
      ..mtDisplayOrder = json['mtDisplayOrder'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idSurveyCategory': idSurveyCategory,
        'dsSurveyCategory': dsSurveyCategory,
        'mtDisplayOrder': mtDisplayOrder,
      };
}