import 'package:database_access_layer/Entities/prd_unit.gen.dart';
import 'base_provider.dart';

abstract class _PrdUnitRepositoryGenerated {
  Future<PrdUnit> getInstance(int idAgent);
  Future<bool> save(PrdUnit agent);
  Future<List<PrdUnit>> retrieveAll();
}

class _PrdUnitRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrdUnitRepositoryGeneratedImpl _this;
  static const String _tableName = "PRD_UNIT";
  static const String _primaryKey = "ID_UNIT";

  _PrdUnitRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrdUnit> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrdUnit.fromMap(map);
  }

  Future<List<PrdUnit>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrdUnit.fromMap(f)).toList();
  }

  Future<PrdUnit> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrdUnit.fromMap(f)).first : PrdUnit();
  }

  Future<Iterable<PrdUnit>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrdUnit.fromMap(f));
  }
Future<bool> save(PrdUnit model) async {
    bool result;
    if (model.idUnit == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idUnit = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idUnit.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrdUnitRepository extends _PrdUnitRepositoryGenerated {
  factory PrdUnitRepository() = _PrdUnitRepositoryImpl;
}

class _PrdUnitRepositoryImpl extends _PrdUnitRepositoryGeneratedImpl
    implements PrdUnitRepository {
  static _PrdUnitRepositoryImpl _this;
  factory _PrdUnitRepositoryImpl() {
    if (_this == null) {
      _this = new _PrdUnitRepositoryImpl._();
    }
    return _this;
  }
  _PrdUnitRepositoryImpl._();
}
*/
