import 'package:database_access_layer/Entities/mem_customer_inventory.gen.dart';
import 'base_provider.dart';

abstract class _MemCustomerInventoryRepositoryGenerated {
  Future<MemCustomerInventory> getInstance(int idAgent);
  Future<bool> save(MemCustomerInventory agent);
  Future<List<MemCustomerInventory>> retrieveAll();
}

class _MemCustomerInventoryRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _MemCustomerInventoryRepositoryGeneratedImpl _this;
  static const String _tableName = "MEM_CUSTOMER_INVENTORY";
  static const String _primaryKey = "ID_CUSTOMER_INVENTORY";

  _MemCustomerInventoryRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<MemCustomerInventory> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return MemCustomerInventory.fromMap(map);
  }

  Future<List<MemCustomerInventory>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => MemCustomerInventory.fromMap(f)).toList();
  }

  Future<MemCustomerInventory> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => MemCustomerInventory.fromMap(f)).first : MemCustomerInventory();
  }

  Future<Iterable<MemCustomerInventory>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => MemCustomerInventory.fromMap(f));
  }
Future<bool> save(MemCustomerInventory model) async {
    bool result;
    if (model.idCustomerInventory == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCustomerInventory = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCustomerInventory.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class MemCustomerInventoryRepository extends _MemCustomerInventoryRepositoryGenerated {
  factory MemCustomerInventoryRepository() = _MemCustomerInventoryRepositoryImpl;
}

class _MemCustomerInventoryRepositoryImpl extends _MemCustomerInventoryRepositoryGeneratedImpl
    implements MemCustomerInventoryRepository {
  static _MemCustomerInventoryRepositoryImpl _this;
  factory _MemCustomerInventoryRepositoryImpl() {
    if (_this == null) {
      _this = new _MemCustomerInventoryRepositoryImpl._();
    }
    return _this;
  }
  _MemCustomerInventoryRepositoryImpl._();
}
*/
