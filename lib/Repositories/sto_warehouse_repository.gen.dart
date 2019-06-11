import 'package:database_access_layer/Entities/sto_warehouse.gen.dart';
import 'base_provider.dart';

abstract class _StoWarehouseRepositoryGenerated {
  Future<StoWarehouse> getInstance(int idAgent);
  Future<bool> save(StoWarehouse agent);
  Future<List<StoWarehouse>> retrieveAll();
}

class _StoWarehouseRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _StoWarehouseRepositoryGeneratedImpl _this;
  static const String _tableName = "STO_WAREHOUSE";
  static const String _primaryKey = "ID_WAREHOUSE";

  _StoWarehouseRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<StoWarehouse> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return StoWarehouse.fromMap(map);
  }

  Future<List<StoWarehouse>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => StoWarehouse.fromMap(f)).toList();
  }

  Future<StoWarehouse> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => StoWarehouse.fromMap(f)).first : StoWarehouse();
  }

  Future<Iterable<StoWarehouse>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => StoWarehouse.fromMap(f));
  }
Future<bool> save(StoWarehouse model) async {
    bool result;
    if (model.idWarehouse == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idWarehouse = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idWarehouse.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class StoWarehouseRepository extends _StoWarehouseRepositoryGenerated {
  factory StoWarehouseRepository() = _StoWarehouseRepositoryImpl;
}

class _StoWarehouseRepositoryImpl extends _StoWarehouseRepositoryGeneratedImpl
    implements StoWarehouseRepository {
  static _StoWarehouseRepositoryImpl _this;
  factory _StoWarehouseRepositoryImpl() {
    if (_this == null) {
      _this = new _StoWarehouseRepositoryImpl._();
    }
    return _this;
  }
  _StoWarehouseRepositoryImpl._();
}
*/
