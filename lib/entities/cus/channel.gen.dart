class Channel {
  int idChannel;
  String dsChannel;
  
  Channel({
    this.idChannel,
    this.dsChannel,
  });

  static Channel fromMap(Map<String, dynamic> json) {
    return Channel()
      ..idChannel = json['idChannel'] as int
      ..dsChannel = json['dsChannel'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idChannel': idChannel,
        'dsChannel': dsChannel,
      };
}