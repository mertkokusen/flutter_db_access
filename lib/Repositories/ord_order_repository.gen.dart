import 'package:database_access_layer/Entities/ord_order.gen.dart';
import 'base_provider.dart';

abstract class _OrdOrderRepositoryGenerated {
  Future<OrdOrder> getInstance(int idAgent);
  Future<bool> save(OrdOrder agent);
  Future<List<OrdOrder>> retrieveAll();
}

class _OrdOrderRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _OrdOrderRepositoryGeneratedImpl _this;
  static const String _tableName = "ORD_ORDER";
  static const String _primaryKey = "ID_ORDER";

  _OrdOrderRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<OrdOrder> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return OrdOrder.fromMap(map);
  }

  Future<List<OrdOrder>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => OrdOrder.fromMap(f)).toList();
  }

  Future<OrdOrder> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => OrdOrder.fromMap(f)).first : OrdOrder();
  }

  Future<Iterable<OrdOrder>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => OrdOrder.fromMap(f));
  }
Future<bool> save(OrdOrder model) async {
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
abstract class OrdOrderRepository extends _OrdOrderRepositoryGenerated {
  factory OrdOrderRepository() = _OrdOrderRepositoryImpl;
}

class _OrdOrderRepositoryImpl extends _OrdOrderRepositoryGeneratedImpl
    implements OrdOrderRepository {
  static _OrdOrderRepositoryImpl _this;
  factory _OrdOrderRepositoryImpl() {
    if (_this == null) {
      _this = new _OrdOrderRepositoryImpl._();
    }
    return _this;
  }
  _OrdOrderRepositoryImpl._();
}
*/
