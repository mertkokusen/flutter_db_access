class CusContractAssortmentList {
  int idContractAssortmentList;
  int idContract;
  int idAssortmentList;
  
  CusContractAssortmentList({
    this.idContractAssortmentList,
    this.idContract,
    this.idAssortmentList,
  });

  static CusContractAssortmentList fromMap(Map<String, dynamic> json) {
    return CusContractAssortmentList()
      ..idContractAssortmentList = json['idContractAssortmentList'] as int
      ..idContract = json['idContract'] as int
      ..idAssortmentList = json['idAssortmentList'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idContractAssortmentList': idContractAssortmentList,
        'idContract': idContract,
        'idAssortmentList': idAssortmentList,
      };
}