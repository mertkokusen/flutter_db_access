import 'package:database_access_layer/Entities/cus_route_business_type_detail.gen.dart';
import 'base_provider.dart';

abstract class _CusRouteBusinessTypeDetailRepositoryGenerated {
  Future<CusRouteBusinessTypeDetail> getInstance(int idAgent);
  Future<bool> save(CusRouteBusinessTypeDetail agent);
  Future<List<CusRouteBusinessTypeDetail>> retrieveAll();
}

class _CusRouteBusinessTypeDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusRouteBusinessTypeDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_ROUTE_BUSINESS_TYPE_DETAIL";
  static const String _primaryKey = "ID_ROUTE_BUSINESS_TYPE_DETAIL";

  _CusRouteBusinessTypeDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusRouteBusinessTypeDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusRouteBusinessTypeDetail.fromMap(map);
  }

  Future<List<CusRouteBusinessTypeDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusRouteBusinessTypeDetail.fromMap(f)).toList();
  }

  Future<CusRouteBusinessTypeDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusRouteBusinessTypeDetail.fromMap(f)).first : CusRouteBusinessTypeDetail();
  }

  Future<Iterable<CusRouteBusinessTypeDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusRouteBusinessTypeDetail.fromMap(f));
  }
Future<bool> save(CusRouteBusinessTypeDetail model) async {
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
abstract class CusRouteBusinessTypeDetailRepository extends _CusRouteBusinessTypeDetailRepositoryGenerated {
  factory CusRouteBusinessTypeDetailRepository() = _CusRouteBusinessTypeDetailRepositoryImpl;
}

class _CusRouteBusinessTypeDetailRepositoryImpl extends _CusRouteBusinessTypeDetailRepositoryGeneratedImpl
    implements CusRouteBusinessTypeDetailRepository {
  static _CusRouteBusinessTypeDetailRepositoryImpl _this;
  factory _CusRouteBusinessTypeDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _CusRouteBusinessTypeDetailRepositoryImpl._();
    }
    return _this;
  }
  _CusRouteBusinessTypeDetailRepositoryImpl._();
}
*/
