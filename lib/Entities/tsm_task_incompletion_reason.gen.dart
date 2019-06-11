class TsmTaskIncompletionReason {
  int idTaskIncompletionReason;
  String dsTaskIncompletionReason;
  bool flDefault;
  
  TsmTaskIncompletionReason({
    this.idTaskIncompletionReason,
    this.dsTaskIncompletionReason,
    this.flDefault,
  });

  static TsmTaskIncompletionReason fromMap(Map<String, dynamic> json) {
    return TsmTaskIncompletionReason()
      ..idTaskIncompletionReason = json['idTaskIncompletionReason'] as int
      ..dsTaskIncompletionReason = json['dsTaskIncompletionReason'] as String
      ..flDefault = json['flDefault'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTaskIncompletionReason': idTaskIncompletionReason,
        'dsTaskIncompletionReason': dsTaskIncompletionReason,
        'flDefault': flDefault,
      };
}