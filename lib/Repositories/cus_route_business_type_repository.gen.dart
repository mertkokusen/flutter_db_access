import 'package:database_access_layer/Entities/cus_route_business_type.gen.dart';
import 'base_provider.dart';

abstract class _CusRouteBusinessTypeRepositoryGenerated {
  Future<CusRouteBusinessType> getInstance(int idAgent);
  Future<bool> save(CusRouteBusinessType agent);
  Future<List<CusRouteBusinessType>> retrieveAll();
}

class _CusRouteBusinessTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusRouteBusinessTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_ROUTE_BUSINESS_TYPE";
  static const String _primaryKey = "ID_ROUTE_BUSINESS_TYPE";

  _CusRouteBusinessTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusRouteBusinessType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusRouteBusinessType.fromMap(map);
  }

  Future<List<CusRouteBusinessType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusRouteBusinessType.fromMap(f)).toList();
  }

  Future<CusRouteBusinessType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusRouteBusinessType.fromMap(f)).first : CusRouteBusinessType();
  }

  Future<Iterable<CusRouteBusinessType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusRouteBusinessType.fromMap(f));
  }
Future<bool> save(CusRouteBusinessType model) async {
    bool result;
    if (model.idRouteBusinessType == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idRouteBusinessType = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idRouteBusinessType.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusRouteBusinessTypeRepository extends _CusRouteBusinessTypeRepositoryGenerated {
  factory CusRouteBusinessTypeRepository() = _CusRouteBusinessTypeRepositoryImpl;
}

class _CusRouteBusinessTypeRepositoryImpl extends _CusRouteBusinessTypeRepositoryGeneratedImpl
    implements CusRouteBusinessTypeRepository {
  static _CusRouteBusinessTypeRepositoryImpl _this;
  factory _CusRouteBusinessTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _CusRouteBusinessTypeRepositoryImpl._();
    }
    return _this;
  }
  _CusRouteBusinessTypeRepositoryImpl._();
}
*/
