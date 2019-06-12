
part of '../../repositories/acc/payment_type_repository.dart';

abstract class _PaymentTypeRepositoryGenerated {
  Future<PaymentType> getInstance(int idAgent);
  Future<List<PaymentType>> retrieveAll();

 Future<bool> save(PaymentType agent);
}
class _PaymentTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PaymentTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "PAYMENT_TYPE";
  static const String _primaryKey = "ID_PAYMENT_TYPE";

  _PaymentTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PaymentType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PaymentType.fromMap(map);
  }

  Future<List<PaymentType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PaymentType.fromMap(f)).toList();
  }

  Future<PaymentType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PaymentType.fromMap(f)).first : PaymentType();
  }

  Future<Iterable<PaymentType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PaymentType.fromMap(f));
  }
Future<bool> save(PaymentType model) async {
    bool result;
    if (model.idPaymentType == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idPaymentType = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idPaymentType.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PaymentTypeRepository extends _PaymentTypeRepositoryGenerated {
  factory PaymentTypeRepository() = _PaymentTypeRepositoryImpl;
}

class _PaymentTypeRepositoryImpl extends _PaymentTypeRepositoryGeneratedImpl
    implements PaymentTypeRepository {
  static _PaymentTypeRepositoryImpl _this;
  factory _PaymentTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _PaymentTypeRepositoryImpl._();
    }
    return _this;
  }
  _PaymentTypeRepositoryImpl._();
}
*/
