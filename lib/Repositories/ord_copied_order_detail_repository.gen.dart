import 'package:database_access_layer/Entities/ord_copied_order_detail.gen.dart';
import 'base_provider.dart';

abstract class _OrdCopiedOrderDetailRepositoryGenerated {
  Future<OrdCopiedOrderDetail> getInstance(int idAgent);
  Future<bool> save(OrdCopiedOrderDetail agent);
  Future<List<OrdCopiedOrderDetail>> retrieveAll();
}

class _OrdCopiedOrderDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _OrdCopiedOrderDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "ORD_COPIED_ORDER_DETAIL";
  static const String _primaryKey = "ID_ORDER_DETAIL";

  _OrdCopiedOrderDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<OrdCopiedOrderDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return OrdCopiedOrderDetail.fromMap(map);
  }

  Future<List<OrdCopiedOrderDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => OrdCopiedOrderDetail.fromMap(f)).toList();
  }

  Future<OrdCopiedOrderDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => OrdCopiedOrderDetail.fromMap(f)).first : OrdCopiedOrderDetail();
  }

  Future<Iterable<OrdCopiedOrderDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => OrdCopiedOrderDetail.fromMap(f));
  }
Future<bool> save(OrdCopiedOrderDetail model) async {
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
abstract class OrdCopiedOrderDetailRepository extends _OrdCopiedOrderDetailRepositoryGenerated {
  factory OrdCopiedOrderDetailRepository() = _OrdCopiedOrderDetailRepositoryImpl;
}

class _OrdCopiedOrderDetailRepositoryImpl extends _OrdCopiedOrderDetailRepositoryGeneratedImpl
    implements OrdCopiedOrderDetailRepository {
  static _OrdCopiedOrderDetailRepositoryImpl _this;
  factory _OrdCopiedOrderDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _OrdCopiedOrderDetailRepositoryImpl._();
    }
    return _this;
  }
  _OrdCopiedOrderDetailRepositoryImpl._();
}
*/
