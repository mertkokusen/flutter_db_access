class CusChannel {
  int idChannel;
  String dsChannel;
  
  CusChannel({
    this.idChannel,
    this.dsChannel,
  });

  static CusChannel fromMap(Map<String, dynamic> json) {
    return CusChannel()
      ..idChannel = json['idChannel'] as int
      ..dsChannel = json['dsChannel'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idChannel': idChannel,
        'dsChannel': dsChannel,
      };
}