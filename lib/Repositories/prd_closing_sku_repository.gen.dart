import 'package:database_access_layer/Entities/prd_closing_sku.gen.dart';
import 'base_provider.dart';

abstract class _PrdClosingSkuRepositoryGenerated {
  Future<PrdClosingSku> getInstance(int idAgent);
  Future<bool> save(PrdClosingSku agent);
  Future<List<PrdClosingSku>> retrieveAll();
}

class _PrdClosingSkuRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrdClosingSkuRepositoryGeneratedImpl _this;
  static const String _tableName = "PRD_CLOSING_SKU";
  static const String _primaryKey = "ID_CLOSING_SKU";

  _PrdClosingSkuRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrdClosingSku> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrdClosingSku.fromMap(map);
  }

  Future<List<PrdClosingSku>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrdClosingSku.fromMap(f)).toList();
  }

  Future<PrdClosingSku> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrdClosingSku.fromMap(f)).first : PrdClosingSku();
  }

  Future<Iterable<PrdClosingSku>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrdClosingSku.fromMap(f));
  }
Future<bool> save(PrdClosingSku model) async {
    bool result;
    if (model.idClosingSku == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idClosingSku = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idClosingSku.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrdClosingSkuRepository extends _PrdClosingSkuRepositoryGenerated {
  factory PrdClosingSkuRepository() = _PrdClosingSkuRepositoryImpl;
}

class _PrdClosingSkuRepositoryImpl extends _PrdClosingSkuRepositoryGeneratedImpl
    implements PrdClosingSkuRepository {
  static _PrdClosingSkuRepositoryImpl _this;
  factory _PrdClosingSkuRepositoryImpl() {
    if (_this == null) {
      _this = new _PrdClosingSkuRepositoryImpl._();
    }
    return _this;
  }
  _PrdClosingSkuRepositoryImpl._();
}
*/
