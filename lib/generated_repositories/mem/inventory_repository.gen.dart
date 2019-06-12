
part of '../../repositories/mem/inventory_repository.dart';

abstract class _InventoryRepositoryGenerated {
  Future<Inventory> getInstance(int idAgent);
  Future<List<Inventory>> retrieveAll();

 Future<bool> save(Inventory agent);
}
class _InventoryRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _InventoryRepositoryGeneratedImpl _this;
  static const String _tableName = "INVENTORY";
  static const String _primaryKey = "ID_INVENTORY";

  _InventoryRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<Inventory> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return Inventory.fromMap(map);
  }

  Future<List<Inventory>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => Inventory.fromMap(f)).toList();
  }

  Future<Inventory> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => Inventory.fromMap(f)).first : Inventory();
  }

  Future<Iterable<Inventory>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => Inventory.fromMap(f));
  }
Future<bool> save(Inventory model) async {
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
abstract class InventoryRepository extends _InventoryRepositoryGenerated {
  factory InventoryRepository() = _InventoryRepositoryImpl;
}

class _InventoryRepositoryImpl extends _InventoryRepositoryGeneratedImpl
    implements InventoryRepository {
  static _InventoryRepositoryImpl _this;
  factory _InventoryRepositoryImpl() {
    if (_this == null) {
      _this = new _InventoryRepositoryImpl._();
    }
    return _this;
  }
  _InventoryRepositoryImpl._();
}
*/
