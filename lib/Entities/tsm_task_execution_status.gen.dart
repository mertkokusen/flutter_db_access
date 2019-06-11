class TsmTaskExecutionStatus {
  int idTaskExecutionStatus;
  String dsTaskExecutionStatus;
  
  TsmTaskExecutionStatus({
    this.idTaskExecutionStatus,
    this.dsTaskExecutionStatus,
  });

  static TsmTaskExecutionStatus fromMap(Map<String, dynamic> json) {
    return TsmTaskExecutionStatus()
      ..idTaskExecutionStatus = json['idTaskExecutionStatus'] as int
      ..dsTaskExecutionStatus = json['dsTaskExecutionStatus'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTaskExecutionStatus': idTaskExecutionStatus,
        'dsTaskExecutionStatus': dsTaskExecutionStatus,
      };
}