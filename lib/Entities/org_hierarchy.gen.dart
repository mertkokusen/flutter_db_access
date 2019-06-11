class OrgHierarchy {
  int idHierarchy;
  String dsHierarchy;
  int idLevel;
  int idParent;
  DateTime dtStart;
  DateTime dtEnd;
  int idHierarchyType;
  int idSalesOrg;
  
  OrgHierarchy({
    this.idHierarchy,
    this.dsHierarchy,
    this.idLevel,
    this.idParent,
    this.dtStart,
    this.dtEnd,
    this.idHierarchyType,
    this.idSalesOrg,
  });

  static OrgHierarchy fromMap(Map<String, dynamic> json) {
    return OrgHierarchy()
      ..idHierarchy = json['idHierarchy'] as int
      ..dsHierarchy = json['dsHierarchy'] as String
      ..idLevel = json['idLevel'] as int
      ..idParent = json['idParent'] as int
      ..dtStart = json['dtStart'] as DateTime
      ..dtEnd = json['dtEnd'] as DateTime
      ..idHierarchyType = json['idHierarchyType'] as int
      ..idSalesOrg = json['idSalesOrg'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idHierarchy': idHierarchy,
        'dsHierarchy': dsHierarchy,
        'idLevel': idLevel,
        'idParent': idParent,
        'dtStart': dtStart,
        'dtEnd': dtEnd,
        'idHierarchyType': idHierarchyType,
        'idSalesOrg': idSalesOrg,
      };
}