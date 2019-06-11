import 'package:database_access_layer/Entities/acc_open_item.gen.dart';
import 'base_provider.dart';

abstract class _AccOpenItemRepositoryGenerated {
  Future<AccOpenItem> getInstance(int idAgent);
  Future<bool> save(AccOpenItem agent);
  Future<List<AccOpenItem>> retrieveAll();
}

class _AccOpenItemRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _AccOpenItemRepositoryGeneratedImpl _this;
  static const String _tableName = "ACC_OPEN_ITEM";
  static const String _primaryKey = "ID_OPEN_ITEM";

  _AccOpenItemRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<AccOpenItem> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return AccOpenItem.fromMap(map);
  }

  Future<List<AccOpenItem>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => AccOpenItem.fromMap(f)).toList();
  }

  Future<AccOpenItem> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => AccOpenItem.fromMap(f)).first : AccOpenItem();
  }

  Future<Iterable<AccOpenItem>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => AccOpenItem.fromMap(f));
  }
Future<bool> save(AccOpenItem model) async {
    bool result;
    if (model.idOpenItem == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idOpenItem = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idOpenItem.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class AccOpenItemRepository extends _AccOpenItemRepositoryGenerated {
  factory AccOpenItemRepository() = _AccOpenItemRepositoryImpl;
}

class _AccOpenItemRepositoryImpl extends _AccOpenItemRepositoryGeneratedImpl
    implements AccOpenItemRepository {
  static _AccOpenItemRepositoryImpl _this;
  factory _AccOpenItemRepositoryImpl() {
    if (_this == null) {
      _this = new _AccOpenItemRepositoryImpl._();
    }
    return _this;
  }
  _AccOpenItemRepositoryImpl._();
}
*/
