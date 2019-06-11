import 'package:database_access_layer/Entities/ord_copied_order.gen.dart';
import 'base_provider.dart';

abstract class _OrdCopiedOrderRepositoryGenerated {
  Future<OrdCopiedOrder> getInstance(int idAgent);
  Future<bool> save(OrdCopiedOrder agent);
  Future<List<OrdCopiedOrder>> retrieveAll();
}

class _OrdCopiedOrderRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _OrdCopiedOrderRepositoryGeneratedImpl _this;
  static const String _tableName = "ORD_COPIED_ORDER";
  static const String _primaryKey = "ID_ORDER";

  _OrdCopiedOrderRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<OrdCopiedOrder> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return OrdCopiedOrder.fromMap(map);
  }

  Future<List<OrdCopiedOrder>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => OrdCopiedOrder.fromMap(f)).toList();
  }

  Future<OrdCopiedOrder> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => OrdCopiedOrder.fromMap(f)).first : OrdCopiedOrder();
  }

  Future<Iterable<OrdCopiedOrder>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => OrdCopiedOrder.fromMap(f));
  }
Future<bool> save(OrdCopiedOrder model) async {
    bool result;
    if (model.idOrder == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idOrder = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idOrder.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class OrdCopiedOrderRepository extends _OrdCopiedOrderRepositoryGenerated {
  factory OrdCopiedOrderRepository() = _OrdCopiedOrderRepositoryImpl;
}

class _OrdCopiedOrderRepositoryImpl extends _OrdCopiedOrderRepositoryGeneratedImpl
    implements OrdCopiedOrderRepository {
  static _OrdCopiedOrderRepositoryImpl _this;
  factory _OrdCopiedOrderRepositoryImpl() {
    if (_this == null) {
      _this = new _OrdCopiedOrderRepositoryImpl._();
    }
    return _this;
  }
  _OrdCopiedOrderRepositoryImpl._();
}
*/
