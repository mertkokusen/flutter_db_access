import 'package:database_access_layer/Entities/cus_customer_list.gen.dart';
import 'base_provider.dart';

abstract class _CusCustomerListRepositoryGenerated {
  Future<CusCustomerList> getInstance(int idAgent);
  Future<bool> save(CusCustomerList agent);
  Future<List<CusCustomerList>> retrieveAll();
}

class _CusCustomerListRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusCustomerListRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_CUSTOMER_LIST";
  static const String _primaryKey = "ID_CUSTOMER_LIST";

  _CusCustomerListRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusCustomerList> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusCustomerList.fromMap(map);
  }

  Future<List<CusCustomerList>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusCustomerList.fromMap(f)).toList();
  }

  Future<CusCustomerList> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusCustomerList.fromMap(f)).first : CusCustomerList();
  }

  Future<Iterable<CusCustomerList>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusCustomerList.fromMap(f));
  }
Future<bool> save(CusCustomerList model) async {
    bool result;
    if (model.idCustomerList == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCustomerList = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCustomerList.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusCustomerListRepository extends _CusCustomerListRepositoryGenerated {
  factory CusCustomerListRepository() = _CusCustomerListRepositoryImpl;
}

class _CusCustomerListRepositoryImpl extends _CusCustomerListRepositoryGeneratedImpl
    implements CusCustomerListRepository {
  static _CusCustomerListRepositoryImpl _this;
  factory _CusCustomerListRepositoryImpl() {
    if (_this == null) {
      _this = new _CusCustomerListRepositoryImpl._();
    }
    return _this;
  }
  _CusCustomerListRepositoryImpl._();
}
*/
