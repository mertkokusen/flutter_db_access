import 'package:database_access_layer/Entities/mem_order_detail.gen.dart';
import 'base_provider.dart';

abstract class _MemOrderDetailRepositoryGenerated {
  Future<MemOrderDetail> getInstance(int idAgent);
  Future<bool> save(MemOrderDetail agent);
  Future<List<MemOrderDetail>> retrieveAll();
}

class _MemOrderDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MemOrderDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "MEM_ORDER_DETAIL";
  static const String _primaryKey = "";

  _MemOrderDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<MemOrderDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return MemOrderDetail.fromMap(map);
  }

  Future<List<MemOrderDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => MemOrderDetail.fromMap(f)).toList();
  }

  Future<MemOrderDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => MemOrderDetail.fromMap(f)).first : MemOrderDetail();
  }

  Future<Iterable<MemOrderDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => MemOrderDetail.fromMap(f));
  }
}
/*
abstract class MemOrderDetailRepository extends _MemOrderDetailRepositoryGenerated {
  factory MemOrderDetailRepository() = _MemOrderDetailRepositoryImpl;
}

class _MemOrderDetailRepositoryImpl extends _MemOrderDetailRepositoryGeneratedImpl
    implements MemOrderDetailRepository {
  static _MemOrderDetailRepositoryImpl _this;
  factory _MemOrderDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _MemOrderDetailRepositoryImpl._();
    }
    return _this;
  }
  _MemOrderDetailRepositoryImpl._();
}
*/
