class SecUserRight {
  int idUserRight;
  String dsMenu;
  String dsUserRight;
  
  SecUserRight({
    this.idUserRight,
    this.dsMenu,
    this.dsUserRight,
  });

  static SecUserRight fromMap(Map<String, dynamic> json) {
    return SecUserRight()
      ..idUserRight = json['idUserRight'] as int
      ..dsMenu = json['dsMenu'] as String
      ..dsUserRight = json['dsUserRight'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idUserRight': idUserRight,
        'dsMenu': dsMenu,
        'dsUserRight': dsUserRight,
      };
}