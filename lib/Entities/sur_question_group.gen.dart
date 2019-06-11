class SurQuestionGroup {
  int idQuestionGroup;
  String dsQuestionGroup;
  
  SurQuestionGroup({
    this.idQuestionGroup,
    this.dsQuestionGroup,
  });

  static SurQuestionGroup fromMap(Map<String, dynamic> json) {
    return SurQuestionGroup()
      ..idQuestionGroup = json['idQuestionGroup'] as int
      ..dsQuestionGroup = json['dsQuestionGroup'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idQuestionGroup': idQuestionGroup,
        'dsQuestionGroup': dsQuestionGroup,
      };
}