import 'package:database_access_layer/Entities/mem_request_detail.gen.dart';
import 'base_provider.dart';

abstract class _MemRequestDetailRepositoryGenerated {
  Future<MemRequestDetail> getInstance(int idAgent);
  Future<bool> save(MemRequestDetail agent);
  Future<List<MemRequestDetail>> retrieveAll();
}

class _MemRequestDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MemRequestDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "MEM_REQUEST_DETAIL";
  static const String _primaryKey = "";

  _MemRequestDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<MemRequestDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return MemRequestDetail.fromMap(map);
  }

  Future<List<MemRequestDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => MemRequestDetail.fromMap(f)).toList();
  }

  Future<MemRequestDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => MemRequestDetail.fromMap(f)).first : MemRequestDetail();
  }

  Future<Iterable<MemRequestDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => MemRequestDetail.fromMap(f));
  }
}
/*
abstract class MemRequestDetailRepository extends _MemRequestDetailRepositoryGenerated {
  factory MemRequestDetailRepository() = _MemRequestDetailRepositoryImpl;
}

class _MemRequestDetailRepositoryImpl extends _MemRequestDetailRepositoryGeneratedImpl
    implements MemRequestDetailRepository {
  static _MemRequestDetailRepositoryImpl _this;
  factory _MemRequestDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _MemRequestDetailRepositoryImpl._();
    }
    return _this;
  }
  _MemRequestDetailRepositoryImpl._();
}
*/
