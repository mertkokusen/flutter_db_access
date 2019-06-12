
part of '../../repositories/cus/route_business_type_detail_repository.dart';

abstract class _RouteBusinessTypeDetailRepositoryGenerated {
  Future<RouteBusinessTypeDetail> getInstance(int idAgent);
  Future<List<RouteBusinessTypeDetail>> retrieveAll();

 Future<bool> save(RouteBusinessTypeDetail agent);
}
class _RouteBusinessTypeDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _RouteBusinessTypeDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "ROUTE_BUSINESS_TYPE_DETAIL";
  static const String _primaryKey = "ID_ROUTE_BUSINESS_TYPE_DETAIL";

  _RouteBusinessTypeDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<RouteBusinessTypeDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return RouteBusinessTypeDetail.fromMap(map);
  }

  Future<List<RouteBusinessTypeDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => RouteBusinessTypeDetail.fromMap(f)).toList();
  }

  Future<RouteBusinessTypeDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => RouteBusinessTypeDetail.fromMap(f)).first : RouteBusinessTypeDetail();
  }

  Future<Iterable<RouteBusinessTypeDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => RouteBusinessTypeDetail.fromMap(f));
  }
Future<bool> save(RouteBusinessTypeDetail model) async {
    bool result;
    if (model.idRouteBusinessTypeDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idRouteBusinessTypeDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idRouteBusinessTypeDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class RouteBusinessTypeDetailRepository extends _RouteBusinessTypeDetailRepositoryGenerated {
  factory RouteBusinessTypeDetailRepository() = _RouteBusinessTypeDetailRepositoryImpl;
}

class _RouteBusinessTypeDetailRepositoryImpl extends _RouteBusinessTypeDetailRepositoryGeneratedImpl
    implements RouteBusinessTypeDetailRepository {
  static _RouteBusinessTypeDetailRepositoryImpl _this;
  factory _RouteBusinessTypeDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _RouteBusinessTypeDetailRepositoryImpl._();
    }
    return _this;
  }
  _RouteBusinessTypeDetailRepositoryImpl._();
}
*/
