import 'package:database_access_layer/Entities/ord_order_status.gen.dart';
import 'base_provider.dart';

abstract class _OrdOrderStatusRepositoryGenerated {
  Future<OrdOrderStatus> getInstance(int idAgent);
  Future<bool> save(OrdOrderStatus agent);
  Future<List<OrdOrderStatus>> retrieveAll();
}

class _OrdOrderStatusRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _OrdOrderStatusRepositoryGeneratedImpl _this;
  static const String _tableName = "ORD_ORDER_STATUS";
  static const String _primaryKey = "ID_ORDER_STATUS";

  _OrdOrderStatusRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<OrdOrderStatus> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return OrdOrderStatus.fromMap(map);
  }

  Future<List<OrdOrderStatus>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => OrdOrderStatus.fromMap(f)).toList();
  }

  Future<OrdOrderStatus> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => OrdOrderStatus.fromMap(f)).first : OrdOrderStatus();
  }

  Future<Iterable<OrdOrderStatus>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => OrdOrderStatus.fromMap(f));
  }
Future<bool> save(OrdOrderStatus model) async {
    bool result;
    if (model.idOrderStatus == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idOrderStatus = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idOrderStatus.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class OrdOrderStatusRepository extends _OrdOrderStatusRepositoryGenerated {
  factory OrdOrderStatusRepository() = _OrdOrderStatusRepositoryImpl;
}

class _OrdOrderStatusRepositoryImpl extends _OrdOrderStatusRepositoryGeneratedImpl
    implements OrdOrderStatusRepository {
  static _OrdOrderStatusRepositoryImpl _this;
  factory _OrdOrderStatusRepositoryImpl() {
    if (_this == null) {
      _this = new _OrdOrderStatusRepositoryImpl._();
    }
    return _this;
  }
  _OrdOrderStatusRepositoryImpl._();
}
*/
