import 'package:database_access_layer/Entities/mem_inventory.gen.dart';
import 'base_provider.dart';

abstract class _MemInventoryRepositoryGenerated {
  Future<MemInventory> getInstance(int idAgent);
  Future<bool> save(MemInventory agent);
  Future<List<MemInventory>> retrieveAll();
}

class _MemInventoryRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MemInventoryRepositoryGeneratedImpl _this;
  static const String _tableName = "MEM_INVENTORY";
  static const String _primaryKey = "ID_INVENTORY";

  _MemInventoryRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<MemInventory> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return MemInventory.fromMap(map);
  }

  Future<List<MemInventory>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => MemInventory.fromMap(f)).toList();
  }

  Future<MemInventory> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => MemInventory.fromMap(f)).first : MemInventory();
  }

  Future<Iterable<MemInventory>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => MemInventory.fromMap(f));
  }
Future<bool> save(MemInventory model) async {
    bool result;
    if (model.idInventory == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idInventory = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idInventory.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class MemInventoryRepository extends _MemInventoryRepositoryGenerated {
  factory MemInventoryRepository() = _MemInventoryRepositoryImpl;
}

class _MemInventoryRepositoryImpl extends _MemInventoryRepositoryGeneratedImpl
    implements MemInventoryRepository {
  static _MemInventoryRepositoryImpl _this;
  factory _MemInventoryRepositoryImpl() {
    if (_this == null) {
      _this = new _MemInventoryRepositoryImpl._();
    }
    return _this;
  }
  _MemInventoryRepositoryImpl._();
}
*/
