class RequestApprovalStatus {
  int idRequestApprovalStatus;
  String dsRequestApprovalStatus;
  
  RequestApprovalStatus({
    this.idRequestApprovalStatus,
    this.dsRequestApprovalStatus,
  });

  static RequestApprovalStatus fromMap(Map<String, dynamic> json) {
    return RequestApprovalStatus()
      ..idRequestApprovalStatus = json['idRequestApprovalStatus'] as int
      ..dsRequestApprovalStatus = json['dsRequestApprovalStatus'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idRequestApprovalStatus': idRequestApprovalStatus,
        'dsRequestApprovalStatus': dsRequestApprovalStatus,
      };
}