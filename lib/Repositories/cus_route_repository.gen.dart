import 'package:database_access_layer/Entities/cus_route.gen.dart';
import 'base_provider.dart';

abstract class _CusRouteRepositoryGenerated {
  Future<CusRoute> getInstance(int idAgent);
  Future<bool> save(CusRoute agent);
  Future<List<CusRoute>> retrieveAll();
}

class _CusRouteRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusRouteRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_ROUTE";
  static const String _primaryKey = "ID_ROUTE";

  _CusRouteRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusRoute> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusRoute.fromMap(map);
  }

  Future<List<CusRoute>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusRoute.fromMap(f)).toList();
  }

  Future<CusRoute> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusRoute.fromMap(f)).first : CusRoute();
  }

  Future<Iterable<CusRoute>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusRoute.fromMap(f));
  }
Future<bool> save(CusRoute model) async {
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
abstract class CusRouteRepository extends _CusRouteRepositoryGenerated {
  factory CusRouteRepository() = _CusRouteRepositoryImpl;
}

class _CusRouteRepositoryImpl extends _CusRouteRepositoryGeneratedImpl
    implements CusRouteRepository {
  static _CusRouteRepositoryImpl _this;
  factory _CusRouteRepositoryImpl() {
    if (_this == null) {
      _this = new _CusRouteRepositoryImpl._();
    }
    return _this;
  }
  _CusRouteRepositoryImpl._();
}
*/
