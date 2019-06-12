
import 'package:database_access_layer/entity/mem/audit_detail.dart';

// GENERATED CODE - DO NOT MODIFY BY HAND
class AuditDetail extends AuditDetailAbstract{
  int idAuditDetail;
  int idAudit;
  int idMem;
  String dsComment;
  String dsBarcode;
  String dsSerial;
  int idModel;
  int idLogoType;
  String dsBarcodeActual;
  String dsSerialActual;
  int idModelActual;
  int idLogoTypeActual;
  int idResult;
  int mtRemark;
  int idProblem;
  int idRepairReason;
  int idCustomerTarget;
  int idMainCustomerTarget;
  DateTime dtMovement;
  String dsMovementComment;
  bool flOffRoute;
  bool flScanMandatory;
  bool flBarcodeManual;
  DateTime dtPickupDate;
  String dsContactName;
  String dsContactPhone;
  int idBarcodeAction;
  bool valid;
  
  AuditDetail({
    this.idAuditDetail,
    this.idAudit,
    this.idMem,
    this.dsComment,
    this.dsBarcode,
    this.dsSerial,
    this.idModel,
    this.idLogoType,
    this.dsBarcodeActual,
    this.dsSerialActual,
    this.idModelActual,
    this.idLogoTypeActual,
    this.idResult,
    this.mtRemark,
    this.idProblem,
    this.idRepairReason,
    this.idCustomerTarget,
    this.idMainCustomerTarget,
    this.dtMovement,
    this.dsMovementComment,
    this.flOffRoute,
    this.flScanMandatory,
    this.flBarcodeManual,
    this.dtPickupDate,
    this.dsContactName,
    this.dsContactPhone,
    this.idBarcodeAction,
    this.valid,
  });

  static AuditDetail fromMap(Map<String, dynamic> json) {
    return AuditDetail()
      ..idAuditDetail = json['idAuditDetail'] as int
      ..idAudit = json['idAudit'] as int
      ..idMem = json['idMem'] as int
      ..dsComment = json['dsComment'] as String
      ..dsBarcode = json['dsBarcode'] as String
      ..dsSerial = json['dsSerial'] as String
      ..idModel = json['idModel'] as int
      ..idLogoType = json['idLogoType'] as int
      ..dsBarcodeActual = json['dsBarcodeActual'] as String
      ..dsSerialActual = json['dsSerialActual'] as String
      ..idModelActual = json['idModelActual'] as int
      ..idLogoTypeActual = json['idLogoTypeActual'] as int
      ..idResult = json['idResult'] as int
      ..mtRemark = json['mtRemark'] as int
      ..idProblem = json['idProblem'] as int
      ..idRepairReason = json['idRepairReason'] as int
      ..idCustomerTarget = json['idCustomerTarget'] as int
      ..idMainCustomerTarget = json['idMainCustomerTarget'] as int
      ..dtMovement = json['dtMovement'] == null ? null : DateTime.parse(json['dtMovement'] as String)
      ..dsMovementComment = json['dsMovementComment'] as String
      ..flOffRoute = json['flOffRoute'] == 1 ? true : false
      ..flScanMandatory = json['flScanMandatory'] == 1 ? true : false
      ..flBarcodeManual = json['flBarcodeManual'] == 1 ? true : false
      ..dtPickupDate = json['dtPickupDate'] == null ? null : DateTime.parse(json['dtPickupDate'] as String)
      ..dsContactName = json['dsContactName'] as String
      ..dsContactPhone = json['dsContactPhone'] as String
      ..idBarcodeAction = json['idBarcodeAction'] as int
      ..valid = json['valid'] == 1 ? true : false
  ;}
  
  Map<String, dynamic> toMap() => <String, dynamic>{
        'idAuditDetail': idAuditDetail,
        'idAudit': idAudit,
        'idMem': idMem,
        'dsComment': dsComment,
        'dsBarcode': dsBarcode,
        'dsSerial': dsSerial,
        'idModel': idModel,
        'idLogoType': idLogoType,
        'dsBarcodeActual': dsBarcodeActual,
        'dsSerialActual': dsSerialActual,
        'idModelActual': idModelActual,
        'idLogoTypeActual': idLogoTypeActual,
        'idResult': idResult,
        'mtRemark': mtRemark,
        'idProblem': idProblem,
        'idRepairReason': idRepairReason,
        'idCustomerTarget': idCustomerTarget,
        'idMainCustomerTarget': idMainCustomerTarget,
        'dtMovement': dtMovement?.toIso8601String(),
        'dsMovementComment': dsMovementComment,
        'flOffRoute': flOffRoute,
        'flScanMandatory': flScanMandatory,
        'flBarcodeManual': flBarcodeManual,
        'dtPickupDate': dtPickupDate?.toIso8601String(),
        'dsContactName': dsContactName,
        'dsContactPhone': dsContactPhone,
        'idBarcodeAction': idBarcodeAction,
        'valid': valid,
      };
}