import 'package:database_access_layer/Entities/mem_order_header.gen.dart';
import 'base_provider.dart';

abstract class _MemOrderHeaderRepositoryGenerated {
  Future<MemOrderHeader> getInstance(int idAgent);
  Future<bool> save(MemOrderHeader agent);
  Future<List<MemOrderHeader>> retrieveAll();
}

class _MemOrderHeaderRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MemOrderHeaderRepositoryGeneratedImpl _this;
  static const String _tableName = "MEM_ORDER_HEADER";
  static const String _primaryKey = "";

  _MemOrderHeaderRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<MemOrderHeader> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return MemOrderHeader.fromMap(map);
  }

  Future<List<MemOrderHeader>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => MemOrderHeader.fromMap(f)).toList();
  }

  Future<MemOrderHeader> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => MemOrderHeader.fromMap(f)).first : MemOrderHeader();
  }

  Future<Iterable<MemOrderHeader>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => MemOrderHeader.fromMap(f));
  }
}
/*
abstract class MemOrderHeaderRepository extends _MemOrderHeaderRepositoryGenerated {
  factory MemOrderHeaderRepository() = _MemOrderHeaderRepositoryImpl;
}

class _MemOrderHeaderRepositoryImpl extends _MemOrderHeaderRepositoryGeneratedImpl
    implements MemOrderHeaderRepository {
  static _MemOrderHeaderRepositoryImpl _this;
  factory _MemOrderHeaderRepositoryImpl() {
    if (_this == null) {
      _this = new _MemOrderHeaderRepositoryImpl._();
    }
    return _this;
  }
  _MemOrderHeaderRepositoryImpl._();
}
*/
