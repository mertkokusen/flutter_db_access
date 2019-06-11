class SurSurveyProduct {
  int idSurveyProduct;
  int idSurvey;
  int idProduct;
  String dsProduct;
  int mtDisplayOrder;
  
  SurSurveyProduct({
    this.idSurveyProduct,
    this.idSurvey,
    this.idProduct,
    this.dsProduct,
    this.mtDisplayOrder,
  });

  static SurSurveyProduct fromMap(Map<String, dynamic> json) {
    return SurSurveyProduct()
      ..idSurveyProduct = json['idSurveyProduct'] as int
      ..idSurvey = json['idSurvey'] as int
      ..idProduct = json['idProduct'] as int
      ..dsProduct = json['dsProduct'] as String
      ..mtDisplayOrder = json['mtDisplayOrder'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idSurveyProduct': idSurveyProduct,
        'idSurvey': idSurvey,
        'idProduct': idProduct,
        'dsProduct': dsProduct,
        'mtDisplayOrder': mtDisplayOrder,
      };
}