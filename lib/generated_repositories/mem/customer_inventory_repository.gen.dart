
part of '../../repositories/mem/customer_inventory_repository.dart';

abstract class _CustomerInventoryRepositoryGenerated {
  Future<CustomerInventory> getInstance(int idAgent);
  Future<List<CustomerInventory>> retrieveAll();

 Future<bool> save(CustomerInventory agent);
}
class _CustomerInventoryRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CustomerInventoryRepositoryGeneratedImpl _this;
  static const String _tableName = "CUSTOMER_INVENTORY";
  static const String _primaryKey = "ID_CUSTOMER_INVENTORY";

  _CustomerInventoryRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CustomerInventory> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CustomerInventory.fromMap(map);
  }

  Future<List<CustomerInventory>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CustomerInventory.fromMap(f)).toList();
  }

  Future<CustomerInventory> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CustomerInventory.fromMap(f)).first : CustomerInventory();
  }

  Future<Iterable<CustomerInventory>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CustomerInventory.fromMap(f));
  }
Future<bool> save(CustomerInventory model) async {
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
abstract class CustomerInventoryRepository extends _CustomerInventoryRepositoryGenerated {
  factory CustomerInventoryRepository() = _CustomerInventoryRepositoryImpl;
}

class _CustomerInventoryRepositoryImpl extends _CustomerInventoryRepositoryGeneratedImpl
    implements CustomerInventoryRepository {
  static _CustomerInventoryRepositoryImpl _this;
  factory _CustomerInventoryRepositoryImpl() {
    if (_this == null) {
      _this = new _CustomerInventoryRepositoryImpl._();
    }
    return _this;
  }
  _CustomerInventoryRepositoryImpl._();
}
*/
