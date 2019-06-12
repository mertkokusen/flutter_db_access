
part of '../../repositories/mem/order_detail_repository.dart';

abstract class _OrderDetailRepositoryGenerated {
  Future<OrderDetail> getInstance(int idAgent);
  Future<List<OrderDetail>> retrieveAll();

}
class _OrderDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _OrderDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "ORDER_DETAIL";
  static const String _primaryKey = "";

  _OrderDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<OrderDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return OrderDetail.fromMap(map);
  }

  Future<List<OrderDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => OrderDetail.fromMap(f)).toList();
  }

  Future<OrderDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => OrderDetail.fromMap(f)).first : OrderDetail();
  }

  Future<Iterable<OrderDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => OrderDetail.fromMap(f));
  }
}
/*
abstract class OrderDetailRepository extends _OrderDetailRepositoryGenerated {
  factory OrderDetailRepository() = _OrderDetailRepositoryImpl;
}

class _OrderDetailRepositoryImpl extends _OrderDetailRepositoryGeneratedImpl
    implements OrderDetailRepository {
  static _OrderDetailRepositoryImpl _this;
  factory _OrderDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _OrderDetailRepositoryImpl._();
    }
    return _this;
  }
  _OrderDetailRepositoryImpl._();
}
*/
