class MemInventory {
  int idInventory;
  int idDealer;
  int idWarehouse;
  int idModelCategory;
  int idModelType;
  int idBusinessCategory;
  int mtQuantity;
  
  MemInventory({
    this.idInventory,
    this.idDealer,
    this.idWarehouse,
    this.idModelCategory,
    this.idModelType,
    this.idBusinessCategory,
    this.mtQuantity,
  });

  static MemInventory fromMap(Map<String, dynamic> json) {
    return MemInventory()
      ..idInventory = json['idInventory'] as int
      ..idDealer = json['idDealer'] as int
      ..idWarehouse = json['idWarehouse'] as int
      ..idModelCategory = json['idModelCategory'] as int
      ..idModelType = json['idModelType'] as int
      ..idBusinessCategory = json['idBusinessCategory'] as int
      ..mtQuantity = json['mtQuantity'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idInventory': idInventory,
        'idDealer': idDealer,
        'idWarehouse': idWarehouse,
        'idModelCategory': idModelCategory,
        'idModelType': idModelType,
        'idBusinessCategory': idBusinessCategory,
        'mtQuantity': mtQuantity,
      };
}