
part of '../../repositories/mem/order_header_repository.dart';

abstract class _OrderHeaderRepositoryGenerated {
  Future<OrderHeader> getInstance(int idAgent);
  Future<List<OrderHeader>> retrieveAll();

}
class _OrderHeaderRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _OrderHeaderRepositoryGeneratedImpl _this;
  static const String _tableName = "ORDER_HEADER";
  static const String _primaryKey = "";

  _OrderHeaderRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<OrderHeader> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return OrderHeader.fromMap(map);
  }

  Future<List<OrderHeader>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => OrderHeader.fromMap(f)).toList();
  }

  Future<OrderHeader> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => OrderHeader.fromMap(f)).first : OrderHeader();
  }

  Future<Iterable<OrderHeader>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => OrderHeader.fromMap(f));
  }
}
/*
abstract class OrderHeaderRepository extends _OrderHeaderRepositoryGenerated {
  factory OrderHeaderRepository() = _OrderHeaderRepositoryImpl;
}

class _OrderHeaderRepositoryImpl extends _OrderHeaderRepositoryGeneratedImpl
    implements OrderHeaderRepository {
  static _OrderHeaderRepositoryImpl _this;
  factory _OrderHeaderRepositoryImpl() {
    if (_this == null) {
      _this = new _OrderHeaderRepositoryImpl._();
    }
    return _this;
  }
  _OrderHeaderRepositoryImpl._();
}
*/
