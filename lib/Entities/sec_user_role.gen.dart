class SecUserRole {
  int idUserRole;
  String dsUserRole;
  bool flTsm;
  bool flTaskApprovalRequired;
  
  SecUserRole({
    this.idUserRole,
    this.dsUserRole,
    this.flTsm,
    this.flTaskApprovalRequired,
  });

  static SecUserRole fromMap(Map<String, dynamic> json) {
    return SecUserRole()
      ..idUserRole = json['idUserRole'] as int
      ..dsUserRole = json['dsUserRole'] as String
      ..flTsm = json['flTsm'] == 1 ? true : false
      ..flTaskApprovalRequired = json['flTaskApprovalRequired'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idUserRole': idUserRole,
        'dsUserRole': dsUserRole,
        'flTsm': flTsm,
        'flTaskApprovalRequired': flTaskApprovalRequired,
      };
}