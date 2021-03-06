
import 'package:database_access_layer/entity/mem/order_header.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class OrderHeader extends OrderHeaderAbstract{
  int idOrder;
  int idDealer;
  DateTime dtOrder;
  DateTime dtShipment;
  int idStatus;
  int idCustomer;
  int idMainCustomer;
  int idAgent;
  int idRoute;
  int idWarehouse;
  String dsComment;
  String dsUniqueKey;
  int vrFlSent;
  int flFromWeb;
  
  OrderHeader({
    this.idOrder,
    this.idDealer,
    this.dtOrder,
    this.dtShipment,
    this.idStatus,
    this.idCustomer,
    this.idMainCustomer,
    this.idAgent,
    this.idRoute,
    this.idWarehouse,
    this.dsComment,
    this.dsUniqueKey,
    this.vrFlSent,
    this.flFromWeb,
  });

  static OrderHeader fromMap(Map<String, dynamic> json) {
    return OrderHeader()
      ..idOrder = json['idOrder'] as int
      ..idDealer = json['idDealer'] as int
      ..dtOrder = json['dtOrder'] == null ? null : DateTime.parse(json['dtOrder'] as String)
      ..dtShipment = json['dtShipment'] == null ? null : DateTime.parse(json['dtShipment'] as String)
      ..idStatus = json['idStatus'] as int
      ..idCustomer = json['idCustomer'] as int
      ..idMainCustomer = json['idMainCustomer'] as int
      ..idAgent = json['idAgent'] as int
      ..idRoute = json['idRoute'] as int
      ..idWarehouse = json['idWarehouse'] as int
      ..dsComment = json['dsComment'] as String
      ..dsUniqueKey = json['dsUniqueKey'] as String
      ..vrFlSent = json['vrFlSent'] as int
      ..flFromWeb = json['flFromWeb'] as int
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idOrder': idOrder,
        'idDealer': idDealer,
        'dtOrder': dtOrder?.toIso8601String(),
        'dtShipment': dtShipment?.toIso8601String(),
        'idStatus': idStatus,
        'idCustomer': idCustomer,
        'idMainCustomer': idMainCustomer,
        'idAgent': idAgent,
        'idRoute': idRoute,
        'idWarehouse': idWarehouse,
        'dsComment': dsComment,
        'dsUniqueKey': dsUniqueKey,
        'vrFlSent': vrFlSent,
        'flFromWeb': flFromWeb,
      };
}