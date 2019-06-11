import 'package:database_access_layer/Entities/cus_other_route.gen.dart';
import 'base_provider.dart';

abstract class _CusOtherRouteRepositoryGenerated {
  Future<CusOtherRoute> getInstance(int idAgent);
  Future<bool> save(CusOtherRoute agent);
  Future<List<CusOtherRoute>> retrieveAll();
}

class _CusOtherRouteRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusOtherRouteRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_OTHER_ROUTE";
  static const String _primaryKey = "ID_OTHER_ROUTE";

  _CusOtherRouteRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusOtherRoute> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusOtherRoute.fromMap(map);
  }

  Future<List<CusOtherRoute>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusOtherRoute.fromMap(f)).toList();
  }

  Future<CusOtherRoute> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusOtherRoute.fromMap(f)).first : CusOtherRoute();
  }

  Future<Iterable<CusOtherRoute>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusOtherRoute.fromMap(f));
  }
Future<bool> save(CusOtherRoute model) async {
    bool result;
    if (model.idOtherRoute == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idOtherRoute = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idOtherRoute.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusOtherRouteRepository extends _CusOtherRouteRepositoryGenerated {
  factory CusOtherRouteRepository() = _CusOtherRouteRepositoryImpl;
}

class _CusOtherRouteRepositoryImpl extends _CusOtherRouteRepositoryGeneratedImpl
    implements CusOtherRouteRepository {
  static _CusOtherRouteRepositoryImpl _this;
  factory _CusOtherRouteRepositoryImpl() {
    if (_this == null) {
      _this = new _CusOtherRouteRepositoryImpl._();
    }
    return _this;
  }
  _CusOtherRouteRepositoryImpl._();
}
*/
