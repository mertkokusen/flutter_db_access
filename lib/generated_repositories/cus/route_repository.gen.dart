
part of '../../repositories/cus/route_repository.dart';

abstract class _RouteRepositoryGenerated {
  Future<Route> getInstance(int idAgent);
  Future<List<Route>> retrieveAll();

 Future<bool> save(Route agent);
}
class _RouteRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _RouteRepositoryGeneratedImpl _this;
  static const String _tableName = "ROUTE";
  static const String _primaryKey = "ID_ROUTE";

  _RouteRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<Route> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return Route.fromMap(map);
  }

  Future<List<Route>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => Route.fromMap(f)).toList();
  }

  Future<Route> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => Route.fromMap(f)).first : Route();
  }

  Future<Iterable<Route>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => Route.fromMap(f));
  }
Future<bool> save(Route model) async {
    bool result;
    if (model.idRoute == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idRoute = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idRoute.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class RouteRepository extends _RouteRepositoryGenerated {
  factory RouteRepository() = _RouteRepositoryImpl;
}

class _RouteRepositoryImpl extends _RouteRepositoryGeneratedImpl
    implements RouteRepository {
  static _RouteRepositoryImpl _this;
  factory _RouteRepositoryImpl() {
    if (_this == null) {
      _this = new _RouteRepositoryImpl._();
    }
    return _this;
  }
  _RouteRepositoryImpl._();
}
*/
