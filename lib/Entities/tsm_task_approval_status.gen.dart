class TsmTaskApprovalStatus {
  int idTaskApprovalStatus;
  String dsTaskApprovalStatus;
  
  TsmTaskApprovalStatus({
    this.idTaskApprovalStatus,
    this.dsTaskApprovalStatus,
  });

  static TsmTaskApprovalStatus fromMap(Map<String, dynamic> json) {
    return TsmTaskApprovalStatus()
      ..idTaskApprovalStatus = json['idTaskApprovalStatus'] as int
      ..dsTaskApprovalStatus = json['dsTaskApprovalStatus'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idTaskApprovalStatus': idTaskApprovalStatus,
        'dsTaskApprovalStatus': dsTaskApprovalStatus,
      };
}