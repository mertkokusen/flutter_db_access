
part of '../../repositories/cus/other_route_repository.dart';

abstract class _OtherRouteRepositoryGenerated {
  Future<OtherRoute> getInstance(int idAgent);
  Future<List<OtherRoute>> retrieveAll();

 Future<bool> save(OtherRoute agent);
}
class _OtherRouteRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _OtherRouteRepositoryGeneratedImpl _this;
  static const String _tableName = "OTHER_ROUTE";
  static const String _primaryKey = "ID_OTHER_ROUTE";

  _OtherRouteRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<OtherRoute> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return OtherRoute.fromMap(map);
  }

  Future<List<OtherRoute>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => OtherRoute.fromMap(f)).toList();
  }

  Future<OtherRoute> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => OtherRoute.fromMap(f)).first : OtherRoute();
  }

  Future<Iterable<OtherRoute>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => OtherRoute.fromMap(f));
  }
Future<bool> save(OtherRoute model) async {
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
abstract class OtherRouteRepository extends _OtherRouteRepositoryGenerated {
  factory OtherRouteRepository() = _OtherRouteRepositoryImpl;
}

class _OtherRouteRepositoryImpl extends _OtherRouteRepositoryGeneratedImpl
    implements OtherRouteRepository {
  static _OtherRouteRepositoryImpl _this;
  factory _OtherRouteRepositoryImpl() {
    if (_this == null) {
      _this = new _OtherRouteRepositoryImpl._();
    }
    return _this;
  }
  _OtherRouteRepositoryImpl._();
}
*/
