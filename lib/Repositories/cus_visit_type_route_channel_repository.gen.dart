import 'package:database_access_layer/Entities/cus_visit_type_route_channel.gen.dart';
import 'base_provider.dart';

abstract class _CusVisitTypeRouteChannelRepositoryGenerated {
  Future<CusVisitTypeRouteChannel> getInstance(int idAgent);
  Future<bool> save(CusVisitTypeRouteChannel agent);
  Future<List<CusVisitTypeRouteChannel>> retrieveAll();
}

class _CusVisitTypeRouteChannelRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusVisitTypeRouteChannelRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_VISIT_TYPE_ROUTE_CHANNEL";
  static const String _primaryKey = "ID_VISIT_TYPE_ROUTE_CHANNEL";

  _CusVisitTypeRouteChannelRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusVisitTypeRouteChannel> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusVisitTypeRouteChannel.fromMap(map);
  }

  Future<List<CusVisitTypeRouteChannel>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusVisitTypeRouteChannel.fromMap(f)).toList();
  }

  Future<CusVisitTypeRouteChannel> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusVisitTypeRouteChannel.fromMap(f)).first : CusVisitTypeRouteChannel();
  }

  Future<Iterable<CusVisitTypeRouteChannel>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusVisitTypeRouteChannel.fromMap(f));
  }
Future<bool> save(CusVisitTypeRouteChannel model) async {
    bool result;
    if (model.idVisitTypeRouteChannel == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idVisitTypeRouteChannel = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idVisitTypeRouteChannel.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusVisitTypeRouteChannelRepository extends _CusVisitTypeRouteChannelRepositoryGenerated {
  factory CusVisitTypeRouteChannelRepository() = _CusVisitTypeRouteChannelRepositoryImpl;
}

class _CusVisitTypeRouteChannelRepositoryImpl extends _CusVisitTypeRouteChannelRepositoryGeneratedImpl
    implements CusVisitTypeRouteChannelRepository {
  static _CusVisitTypeRouteChannelRepositoryImpl _this;
  factory _CusVisitTypeRouteChannelRepositoryImpl() {
    if (_this == null) {
      _this = new _CusVisitTypeRouteChannelRepositoryImpl._();
    }
    return _this;
  }
  _CusVisitTypeRouteChannelRepositoryImpl._();
}
*/
