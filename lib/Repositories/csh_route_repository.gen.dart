import 'package:database_access_layer/Entities/csh_route.gen.dart';
import 'base_provider.dart';

abstract class _CshRouteRepositoryGenerated {
  Future<CshRoute> getInstance(int idAgent);
  Future<bool> save(CshRoute agent);
  Future<List<CshRoute>> retrieveAll();
}

class _CshRouteRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CshRouteRepositoryGeneratedImpl _this;
  static const String _tableName = "CSH_ROUTE";
  static const String _primaryKey = "ID_CASH_ROUTE";

  _CshRouteRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CshRoute> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CshRoute.fromMap(map);
  }

  Future<List<CshRoute>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CshRoute.fromMap(f)).toList();
  }

  Future<CshRoute> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CshRoute.fromMap(f)).first : CshRoute();
  }

  Future<Iterable<CshRoute>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CshRoute.fromMap(f));
  }
Future<bool> save(CshRoute model) async {
    bool result;
    if (model.idCashRoute == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCashRoute = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCashRoute.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CshRouteRepository extends _CshRouteRepositoryGenerated {
  factory CshRouteRepository() = _CshRouteRepositoryImpl;
}

class _CshRouteRepositoryImpl extends _CshRouteRepositoryGeneratedImpl
    implements CshRouteRepository {
  static _CshRouteRepositoryImpl _this;
  factory _CshRouteRepositoryImpl() {
    if (_this == null) {
      _this = new _CshRouteRepositoryImpl._();
    }
    return _this;
  }
  _CshRouteRepositoryImpl._();
}
*/
