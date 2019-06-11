class CusRequestApprovalStatus {
  int idRequestApprovalStatus;
  String dsRequestApprovalStatus;
  
  CusRequestApprovalStatus({
    this.idRequestApprovalStatus,
    this.dsRequestApprovalStatus,
  });

  static CusRequestApprovalStatus fromMap(Map<String, dynamic> json) {
    return CusRequestApprovalStatus()
      ..idRequestApprovalStatus = json['idRequestApprovalStatus'] as int
      ..dsRequestApprovalStatus = json['dsRequestApprovalStatus'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idRequestApprovalStatus': idRequestApprovalStatus,
        'dsRequestApprovalStatus': dsRequestApprovalStatus,
      };
}