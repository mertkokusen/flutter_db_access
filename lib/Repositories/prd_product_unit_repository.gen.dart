import 'package:database_access_layer/Entities/prd_product_unit.gen.dart';
import 'base_provider.dart';

abstract class _PrdProductUnitRepositoryGenerated {
  Future<PrdProductUnit> getInstance(int idAgent);
  Future<bool> save(PrdProductUnit agent);
  Future<List<PrdProductUnit>> retrieveAll();
}

class _PrdProductUnitRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrdProductUnitRepositoryGeneratedImpl _this;
  static const String _tableName = "PRD_PRODUCT_UNIT";
  static const String _primaryKey = "ID_PRODUCT_UNIT";

  _PrdProductUnitRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrdProductUnit> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrdProductUnit.fromMap(map);
  }

  Future<List<PrdProductUnit>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrdProductUnit.fromMap(f)).toList();
  }

  Future<PrdProductUnit> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrdProductUnit.fromMap(f)).first : PrdProductUnit();
  }

  Future<Iterable<PrdProductUnit>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrdProductUnit.fromMap(f));
  }
Future<bool> save(PrdProductUnit model) async {
    bool result;
    if (model.idProductUnit == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idProductUnit = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idProductUnit.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrdProductUnitRepository extends _PrdProductUnitRepositoryGenerated {
  factory PrdProductUnitRepository() = _PrdProductUnitRepositoryImpl;
}

class _PrdProductUnitRepositoryImpl extends _PrdProductUnitRepositoryGeneratedImpl
    implements PrdProductUnitRepository {
  static _PrdProductUnitRepositoryImpl _this;
  factory _PrdProductUnitRepositoryImpl() {
    if (_this == null) {
      _this = new _PrdProductUnitRepositoryImpl._();
    }
    return _this;
  }
  _PrdProductUnitRepositoryImpl._();
}
*/
