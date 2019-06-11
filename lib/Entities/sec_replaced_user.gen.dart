class SecReplacedUser {
  int idReplacedUser;
  int idUser;
  int idUserRole;
  
  SecReplacedUser({
    this.idReplacedUser,
    this.idUser,
    this.idUserRole,
  });

  static SecReplacedUser fromMap(Map<String, dynamic> json) {
    return SecReplacedUser()
      ..idReplacedUser = json['idReplacedUser'] as int
      ..idUser = json['idUser'] as int
      ..idUserRole = json['idUserRole'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idReplacedUser': idReplacedUser,
        'idUser': idUser,
        'idUserRole': idUserRole,
      };
}