class SurAepPlanogram {
  int idAepPlanogram;
  String dsAepPlanogram;
  int idAep;
  int idSurveyCategory;
  DateTime dtStart;
  DateTime dtEnd;
  bool flMandatoryAnswer;
  bool flMandatoryPhotoAnswer;
  
  SurAepPlanogram({
    this.idAepPlanogram,
    this.dsAepPlanogram,
    this.idAep,
    this.idSurveyCategory,
    this.dtStart,
    this.dtEnd,
    this.flMandatoryAnswer,
    this.flMandatoryPhotoAnswer,
  });

  static SurAepPlanogram fromMap(Map<String, dynamic> json) {
    return SurAepPlanogram()
      ..idAepPlanogram = json['idAepPlanogram'] as int
      ..dsAepPlanogram = json['dsAepPlanogram'] as String
      ..idAep = json['idAep'] as int
      ..idSurveyCategory = json['idSurveyCategory'] as int
      ..dtStart = json['dtStart'] as DateTime
      ..dtEnd = json['dtEnd'] as DateTime
      ..flMandatoryAnswer = json['flMandatoryAnswer'] == 1 ? true : false
      ..flMandatoryPhotoAnswer = json['flMandatoryPhotoAnswer'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idAepPlanogram': idAepPlanogram,
        'dsAepPlanogram': dsAepPlanogram,
        'idAep': idAep,
        'idSurveyCategory': idSurveyCategory,
        'dtStart': dtStart,
        'dtEnd': dtEnd,
        'flMandatoryAnswer': flMandatoryAnswer,
        'flMandatoryPhotoAnswer': flMandatoryPhotoAnswer,
      };
}