import 'package:database_access_layer/Entities/prd_product_group.gen.dart';
import 'base_provider.dart';

abstract class _PrdProductGroupRepositoryGenerated {
  Future<PrdProductGroup> getInstance(int idAgent);
  Future<bool> save(PrdProductGroup agent);
  Future<List<PrdProductGroup>> retrieveAll();
}

class _PrdProductGroupRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrdProductGroupRepositoryGeneratedImpl _this;
  static const String _tableName = "PRD_PRODUCT_GROUP";
  static const String _primaryKey = "ID_PRODUCT_GROUP";

  _PrdProductGroupRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrdProductGroup> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrdProductGroup.fromMap(map);
  }

  Future<List<PrdProductGroup>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrdProductGroup.fromMap(f)).toList();
  }

  Future<PrdProductGroup> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrdProductGroup.fromMap(f)).first : PrdProductGroup();
  }

  Future<Iterable<PrdProductGroup>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrdProductGroup.fromMap(f));
  }
Future<bool> save(PrdProductGroup model) async {
    bool result;
    if (model.idProductGroup == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idProductGroup = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idProductGroup.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrdProductGroupRepository extends _PrdProductGroupRepositoryGenerated {
  factory PrdProductGroupRepository() = _PrdProductGroupRepositoryImpl;
}

class _PrdProductGroupRepositoryImpl extends _PrdProductGroupRepositoryGeneratedImpl
    implements PrdProductGroupRepository {
  static _PrdProductGroupRepositoryImpl _this;
  factory _PrdProductGroupRepositoryImpl() {
    if (_this == null) {
      _this = new _PrdProductGroupRepositoryImpl._();
    }
    return _this;
  }
  _PrdProductGroupRepositoryImpl._();
}
*/
