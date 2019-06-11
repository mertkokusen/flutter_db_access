class TsmExecutionStatus {
  int idExecutionStatus;
  String dsExecutionStatus;
  
  TsmExecutionStatus({
    this.idExecutionStatus,
    this.dsExecutionStatus,
  });

  static TsmExecutionStatus fromMap(Map<String, dynamic> json) {
    return TsmExecutionStatus()
      ..idExecutionStatus = json['idExecutionStatus'] as int
      ..dsExecutionStatus = json['dsExecutionStatus'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idExecutionStatus': idExecutionStatus,
        'dsExecutionStatus': dsExecutionStatus,
      };
}