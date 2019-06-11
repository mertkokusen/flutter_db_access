import 'package:database_access_layer/Entities/ord_order_detail.gen.dart';
import 'base_provider.dart';

abstract class _OrdOrderDetailRepositoryGenerated {
  Future<OrdOrderDetail> getInstance(int idAgent);
  Future<bool> save(OrdOrderDetail agent);
  Future<List<OrdOrderDetail>> retrieveAll();
}

class _OrdOrderDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _OrdOrderDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "ORD_ORDER_DETAIL";
  static const String _primaryKey = "ID_ORDER_DETAIL";

  _OrdOrderDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<OrdOrderDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return OrdOrderDetail.fromMap(map);
  }

  Future<List<OrdOrderDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => OrdOrderDetail.fromMap(f)).toList();
  }

  Future<OrdOrderDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => OrdOrderDetail.fromMap(f)).first : OrdOrderDetail();
  }

  Future<Iterable<OrdOrderDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => OrdOrderDetail.fromMap(f));
  }
Future<bool> save(OrdOrderDetail model) async {
    bool result;
    if (model.idOrderDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idOrderDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idOrderDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class OrdOrderDetailRepository extends _OrdOrderDetailRepositoryGenerated {
  factory OrdOrderDetailRepository() = _OrdOrderDetailRepositoryImpl;
}

class _OrdOrderDetailRepositoryImpl extends _OrdOrderDetailRepositoryGeneratedImpl
    implements OrdOrderDetailRepository {
  static _OrdOrderDetailRepositoryImpl _this;
  factory _OrdOrderDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _OrdOrderDetailRepositoryImpl._();
    }
    return _this;
  }
  _OrdOrderDetailRepositoryImpl._();
}
*/
