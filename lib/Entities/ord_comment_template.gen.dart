class OrdCommentTemplate {
  int idCommentTemplate;
  int idCommentType;
  String dsCommentTemplate;
  
  OrdCommentTemplate({
    this.idCommentTemplate,
    this.idCommentType,
    this.dsCommentTemplate,
  });

  static OrdCommentTemplate fromMap(Map<String, dynamic> json) {
    return OrdCommentTemplate()
      ..idCommentTemplate = json['idCommentTemplate'] as int
      ..idCommentType = json['idCommentType'] as int
      ..dsCommentTemplate = json['dsCommentTemplate'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCommentTemplate': idCommentTemplate,
        'idCommentType': idCommentType,
        'dsCommentTemplate': dsCommentTemplate,
      };
}