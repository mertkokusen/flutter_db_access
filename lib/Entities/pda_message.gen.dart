class PdaMessage {
  int idMessage;
  String dsMessage;
  int idMessageType;
  DateTime dtValidFrom;
  DateTime dtValidTo;
  
  PdaMessage({
    this.idMessage,
    this.dsMessage,
    this.idMessageType,
    this.dtValidFrom,
    this.dtValidTo,
  });

  static PdaMessage fromMap(Map<String, dynamic> json) {
    return PdaMessage()
      ..idMessage = json['idMessage'] as int
      ..dsMessage = json['dsMessage'] as String
      ..idMessageType = json['idMessageType'] as int
      ..dtValidFrom = json['dtValidFrom'] as DateTime
      ..dtValidTo = json['dtValidTo'] as DateTime
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idMessage': idMessage,
        'dsMessage': dsMessage,
        'idMessageType': idMessageType,
        'dtValidFrom': dtValidFrom,
        'dtValidTo': dtValidTo,
      };
}