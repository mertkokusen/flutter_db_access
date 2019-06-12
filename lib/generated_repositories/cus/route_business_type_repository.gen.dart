
part of '../../repositories/cus/route_business_type_repository.dart';

abstract class _RouteBusinessTypeRepositoryGenerated {
  Future<RouteBusinessType> getInstance(int idAgent);
  Future<List<RouteBusinessType>> retrieveAll();

 Future<bool> save(RouteBusinessType agent);
}
class _RouteBusinessTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _RouteBusinessTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "ROUTE_BUSINESS_TYPE";
  static const String _primaryKey = "ID_ROUTE_BUSINESS_TYPE";

  _RouteBusinessTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<RouteBusinessType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return RouteBusinessType.fromMap(map);
  }

  Future<List<RouteBusinessType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => RouteBusinessType.fromMap(f)).toList();
  }

  Future<RouteBusinessType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => RouteBusinessType.fromMap(f)).first : RouteBusinessType();
  }

  Future<Iterable<RouteBusinessType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => RouteBusinessType.fromMap(f));
  }
Future<bool> save(RouteBusinessType model) async {
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
abstract class RouteBusinessTypeRepository extends _RouteBusinessTypeRepositoryGenerated {
  factory RouteBusinessTypeRepository() = _RouteBusinessTypeRepositoryImpl;
}

class _RouteBusinessTypeRepositoryImpl extends _RouteBusinessTypeRepositoryGeneratedImpl
    implements RouteBusinessTypeRepository {
  static _RouteBusinessTypeRepositoryImpl _this;
  factory _RouteBusinessTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _RouteBusinessTypeRepositoryImpl._();
    }
    return _this;
  }
  _RouteBusinessTypeRepositoryImpl._();
}
*/
