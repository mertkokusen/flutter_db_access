import 'package:database_access_layer/Entities/tsm_task_customer.gen.dart';
import 'base_provider.dart';

abstract class _TsmTaskCustomerRepositoryGenerated {
  Future<TsmTaskCustomer> getInstance(int idAgent);
  Future<bool> save(TsmTaskCustomer agent);
  Future<List<TsmTaskCustomer>> retrieveAll();
}

class _TsmTaskCustomerRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmTaskCustomerRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_TASK_CUSTOMER";
  static const String _primaryKey = "ID_TASK_CUSTOMER";

  _TsmTaskCustomerRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmTaskCustomer> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmTaskCustomer.fromMap(map);
  }

  Future<List<TsmTaskCustomer>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmTaskCustomer.fromMap(f)).toList();
  }

  Future<TsmTaskCustomer> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmTaskCustomer.fromMap(f)).first : TsmTaskCustomer();
  }

  Future<Iterable<TsmTaskCustomer>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmTaskCustomer.fromMap(f));
  }
Future<bool> save(TsmTaskCustomer model) async {
    bool result;
    if (model.idTaskCustomer == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idTaskCustomer = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idTaskCustomer.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmTaskCustomerRepository extends _TsmTaskCustomerRepositoryGenerated {
  factory TsmTaskCustomerRepository() = _TsmTaskCustomerRepositoryImpl;
}

class _TsmTaskCustomerRepositoryImpl extends _TsmTaskCustomerRepositoryGeneratedImpl
    implements TsmTaskCustomerRepository {
  static _TsmTaskCustomerRepositoryImpl _this;
  factory _TsmTaskCustomerRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmTaskCustomerRepositoryImpl._();
    }
    return _this;
  }
  _TsmTaskCustomerRepositoryImpl._();
}
*/
