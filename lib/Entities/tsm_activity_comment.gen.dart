class TsmActivityComment {
  int idActivityComment;
  int idActivity;
  int idActivityDate;
  int idCommentType;
  int idCommentTarget;
  String dsComment;
  bool valid;
  String dsUniqueKey;
  String dsActivityUniqueKey;
  String dsActivityDateUniqueKey;
  bool vrFlSent;
  
  TsmActivityComment({
    this.idActivityComment,
    this.idActivity,
    this.idActivityDate,
    this.idCommentType,
    this.idCommentTarget,
    this.dsComment,
    this.valid,
    this.dsUniqueKey,
    this.dsActivityUniqueKey,
    this.dsActivityDateUniqueKey,
    this.vrFlSent,
  });

  static TsmActivityComment fromMap(Map<String, dynamic> json) {
    return TsmActivityComment()
      ..idActivityComment = json['idActivityComment'] as int
      ..idActivity = json['idActivity'] as int
      ..idActivityDate = json['idActivityDate'] as int
      ..idCommentType = json['idCommentType'] as int
      ..idCommentTarget = json['idCommentTarget'] as int
      ..dsComment = json['dsComment'] as String
      ..valid = json['valid'] == 1 ? true : false
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..dsActivityUniqueKey = json['dsActivityUniqueKey'] as String
      ..dsActivityDateUniqueKey = json['dsActivityDateUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idActivityComment': idActivityComment,
        'idActivity': idActivity,
        'idActivityDate': idActivityDate,
        'idCommentType': idCommentType,
        'idCommentTarget': idCommentTarget,
        'dsComment': dsComment,
        'valid': valid,
        'dsUniqueKey': dsUniqueKey,
        'dsActivityUniqueKey': dsActivityUniqueKey,
        'dsActivityDateUniqueKey': dsActivityDateUniqueKey,
        'vrFlSent': vrFlSent,
      };
}