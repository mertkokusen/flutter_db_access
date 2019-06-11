class CusRequestAttribute {
  int idRequestAttribute;
  String dsRequestAttribute;
  bool flTsmApprovalNeed;
  bool flRsmApprovalNeed;
  
  CusRequestAttribute({
    this.idRequestAttribute,
    this.dsRequestAttribute,
    this.flTsmApprovalNeed,
    this.flRsmApprovalNeed,
  });

  static CusRequestAttribute fromMap(Map<String, dynamic> json) {
    return CusRequestAttribute()
      ..idRequestAttribute = json['idRequestAttribute'] as int
      ..dsRequestAttribute = json['dsRequestAttribute'] as String
      ..flTsmApprovalNeed = json['flTsmApprovalNeed'] == 1 ? true : false
      ..flRsmApprovalNeed = json['flRsmApprovalNeed'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idRequestAttribute': idRequestAttribute,
        'dsRequestAttribute': dsRequestAttribute,
        'flTsmApprovalNeed': flTsmApprovalNeed,
        'flRsmApprovalNeed': flRsmApprovalNeed,
      };
}