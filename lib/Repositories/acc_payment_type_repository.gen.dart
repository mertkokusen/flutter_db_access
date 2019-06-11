import 'package:database_access_layer/Entities/acc_payment_type.gen.dart';
import 'base_provider.dart';

abstract class _AccPaymentTypeRepositoryGenerated {
  Future<AccPaymentType> getInstance(int idAgent);
  Future<bool> save(AccPaymentType agent);
  Future<List<AccPaymentType>> retrieveAll();
}

class _AccPaymentTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _AccPaymentTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "ACC_PAYMENT_TYPE";
  static const String _primaryKey = "ID_PAYMENT_TYPE";

  _AccPaymentTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<AccPaymentType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return AccPaymentType.fromMap(map);
  }

  Future<List<AccPaymentType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => AccPaymentType.fromMap(f)).toList();
  }

  Future<AccPaymentType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => AccPaymentType.fromMap(f)).first : AccPaymentType();
  }

  Future<Iterable<AccPaymentType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => AccPaymentType.fromMap(f));
  }
Future<bool> save(AccPaymentType model) async {
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
abstract class AccPaymentTypeRepository extends _AccPaymentTypeRepositoryGenerated {
  factory AccPaymentTypeRepository() = _AccPaymentTypeRepositoryImpl;
}

class _AccPaymentTypeRepositoryImpl extends _AccPaymentTypeRepositoryGeneratedImpl
    implements AccPaymentTypeRepository {
  static _AccPaymentTypeRepositoryImpl _this;
  factory _AccPaymentTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _AccPaymentTypeRepositoryImpl._();
    }
    return _this;
  }
  _AccPaymentTypeRepositoryImpl._();
}
*/
