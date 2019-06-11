import 'package:database_access_layer/Entities/tsm_activity_date_customer.gen.dart';
import 'base_provider.dart';

abstract class _TsmActivityDateCustomerRepositoryGenerated {
  Future<TsmActivityDateCustomer> getInstance(int idAgent);
  Future<bool> save(TsmActivityDateCustomer agent);
  Future<List<TsmActivityDateCustomer>> retrieveAll();
}

class _TsmActivityDateCustomerRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmActivityDateCustomerRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_ACTIVITY_DATE_CUSTOMER";
  static const String _primaryKey = "ID_ACTIVITY_DATE_CUSTOMER";

  _TsmActivityDateCustomerRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmActivityDateCustomer> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmActivityDateCustomer.fromMap(map);
  }

  Future<List<TsmActivityDateCustomer>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmActivityDateCustomer.fromMap(f)).toList();
  }

  Future<TsmActivityDateCustomer> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmActivityDateCustomer.fromMap(f)).first : TsmActivityDateCustomer();
  }

  Future<Iterable<TsmActivityDateCustomer>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmActivityDateCustomer.fromMap(f));
  }
Future<bool> save(TsmActivityDateCustomer model) async {
    bool result;
    if (model.idActivityDateCustomer == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idActivityDateCustomer = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idActivityDateCustomer.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmActivityDateCustomerRepository extends _TsmActivityDateCustomerRepositoryGenerated {
  factory TsmActivityDateCustomerRepository() = _TsmActivityDateCustomerRepositoryImpl;
}

class _TsmActivityDateCustomerRepositoryImpl extends _TsmActivityDateCustomerRepositoryGeneratedImpl
    implements TsmActivityDateCustomerRepository {
  static _TsmActivityDateCustomerRepositoryImpl _this;
  factory _TsmActivityDateCustomerRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmActivityDateCustomerRepositoryImpl._();
    }
    return _this;
  }
  _TsmActivityDateCustomerRepositoryImpl._();
}
*/
