
part of '../../repositories/cus/visit_type_route_channel_repository.dart';

abstract class _VisitTypeRouteChannelRepositoryGenerated {
  Future<VisitTypeRouteChannel> getInstance(int idAgent);
  Future<List<VisitTypeRouteChannel>> retrieveAll();

 Future<bool> save(VisitTypeRouteChannel agent);
}
class _VisitTypeRouteChannelRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _VisitTypeRouteChannelRepositoryGeneratedImpl _this;
  static const String _tableName = "VISIT_TYPE_ROUTE_CHANNEL";
  static const String _primaryKey = "ID_VISIT_TYPE_ROUTE_CHANNEL";

  _VisitTypeRouteChannelRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<VisitTypeRouteChannel> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return VisitTypeRouteChannel.fromMap(map);
  }

  Future<List<VisitTypeRouteChannel>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => VisitTypeRouteChannel.fromMap(f)).toList();
  }

  Future<VisitTypeRouteChannel> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => VisitTypeRouteChannel.fromMap(f)).first : VisitTypeRouteChannel();
  }

  Future<Iterable<VisitTypeRouteChannel>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => VisitTypeRouteChannel.fromMap(f));
  }
Future<bool> save(VisitTypeRouteChannel model) async {
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
abstract class VisitTypeRouteChannelRepository extends _VisitTypeRouteChannelRepositoryGenerated {
  factory VisitTypeRouteChannelRepository() = _VisitTypeRouteChannelRepositoryImpl;
}

class _VisitTypeRouteChannelRepositoryImpl extends _VisitTypeRouteChannelRepositoryGeneratedImpl
    implements VisitTypeRouteChannelRepository {
  static _VisitTypeRouteChannelRepositoryImpl _this;
  factory _VisitTypeRouteChannelRepositoryImpl() {
    if (_this == null) {
      _this = new _VisitTypeRouteChannelRepositoryImpl._();
    }
    return _this;
  }
  _VisitTypeRouteChannelRepositoryImpl._();
}
*/
