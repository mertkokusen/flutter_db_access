class CusCustomerAttribute {
  int idCustomerAttribute;
  bool flActive;
  int idCustomer;
  int idSalesOrg;
  int idSalesOffice;
  int idGroupCode1;
  int idGroupCode2;
  int idGroupCode3;
  int idGroupCode4;
  int idGroupCode5;
  int mtMultiSelect1;
  int mtMultiSelect2;
  int mtMultiSelect3;
  int mtMultiSelect4;
  int mtMultiSelect5;
  bool flBlockedForOrder;
  int idCustomerSalesUnit;
  int idCustomerSalesGroup;
  String dsVirtualBusinessType;
  String dsBusinessInitiativeNo;
  
  CusCustomerAttribute({
    this.idCustomerAttribute,
    this.flActive,
    this.idCustomer,
    this.idSalesOrg,
    this.idSalesOffice,
    this.idGroupCode1,
    this.idGroupCode2,
    this.idGroupCode3,
    this.idGroupCode4,
    this.idGroupCode5,
    this.mtMultiSelect1,
    this.mtMultiSelect2,
    this.mtMultiSelect3,
    this.mtMultiSelect4,
    this.mtMultiSelect5,
    this.flBlockedForOrder,
    this.idCustomerSalesUnit,
    this.idCustomerSalesGroup,
    this.dsVirtualBusinessType,
    this.dsBusinessInitiativeNo,
  });

  static CusCustomerAttribute fromMap(Map<String, dynamic> json) {
    return CusCustomerAttribute()
      ..idCustomerAttribute = json['idCustomerAttribute'] as int
      ..flActive = json['flActive'] == 1 ? true : false
      ..idCustomer = json['idCustomer'] as int
      ..idSalesOrg = json['idSalesOrg'] as int
      ..idSalesOffice = json['idSalesOffice'] as int
      ..idGroupCode1 = json['idGroupCode1'] as int
      ..idGroupCode2 = json['idGroupCode2'] as int
      ..idGroupCode3 = json['idGroupCode3'] as int
      ..idGroupCode4 = json['idGroupCode4'] as int
      ..idGroupCode5 = json['idGroupCode5'] as int
      ..mtMultiSelect1 = json['mtMultiSelect1'] as int
      ..mtMultiSelect2 = json['mtMultiSelect2'] as int
      ..mtMultiSelect3 = json['mtMultiSelect3'] as int
      ..mtMultiSelect4 = json['mtMultiSelect4'] as int
      ..mtMultiSelect5 = json['mtMultiSelect5'] as int
      ..flBlockedForOrder = json['flBlockedForOrder'] == 1 ? true : false
      ..idCustomerSalesUnit = json['idCustomerSalesUnit'] as int
      ..idCustomerSalesGroup = json['idCustomerSalesGroup'] as int
      ..dsVirtualBusinessType = json['dsVirtualBusinessType'] as String
      ..dsBusinessInitiativeNo = json['dsBusinessInitiativeNo'] as String
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idCustomerAttribute': idCustomerAttribute,
        'flActive': flActive,
        'idCustomer': idCustomer,
        'idSalesOrg': idSalesOrg,
        'idSalesOffice': idSalesOffice,
        'idGroupCode1': idGroupCode1,
        'idGroupCode2': idGroupCode2,
        'idGroupCode3': idGroupCode3,
        'idGroupCode4': idGroupCode4,
        'idGroupCode5': idGroupCode5,
        'mtMultiSelect1': mtMultiSelect1,
        'mtMultiSelect2': mtMultiSelect2,
        'mtMultiSelect3': mtMultiSelect3,
        'mtMultiSelect4': mtMultiSelect4,
        'mtMultiSelect5': mtMultiSelect5,
        'flBlockedForOrder': flBlockedForOrder,
        'idCustomerSalesUnit': idCustomerSalesUnit,
        'idCustomerSalesGroup': idCustomerSalesGroup,
        'dsVirtualBusinessType': dsVirtualBusinessType,
        'dsBusinessInitiativeNo': dsBusinessInitiativeNo,
      };
}