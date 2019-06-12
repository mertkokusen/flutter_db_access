
part of '../../repositories/mem/request_detail_repository.dart';

abstract class _RequestDetailRepositoryGenerated {
  Future<RequestDetail> getInstance(int idAgent);
  Future<List<RequestDetail>> retrieveAll();

}
class _RequestDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _RequestDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "REQUEST_DETAIL";
  static const String _primaryKey = "";

  _RequestDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<RequestDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return RequestDetail.fromMap(map);
  }

  Future<List<RequestDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => RequestDetail.fromMap(f)).toList();
  }

  Future<RequestDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => RequestDetail.fromMap(f)).first : RequestDetail();
  }

  Future<Iterable<RequestDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => RequestDetail.fromMap(f));
  }
}
/*
abstract class RequestDetailRepository extends _RequestDetailRepositoryGenerated {
  factory RequestDetailRepository() = _RequestDetailRepositoryImpl;
}

class _RequestDetailRepositoryImpl extends _RequestDetailRepositoryGeneratedImpl
    implements RequestDetailRepository {
  static _RequestDetailRepositoryImpl _this;
  factory _RequestDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _RequestDetailRepositoryImpl._();
    }
    return _this;
  }
  _RequestDetailRepositoryImpl._();
}
*/
