
part of '../../repositories/acc/open_item_repository.dart';

abstract class _OpenItemRepositoryGenerated {
  Future<OpenItem> getInstance(int idAgent);
  Future<List<OpenItem>> retrieveAll();

 Future<bool> save(OpenItem agent);
}
class _OpenItemRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _OpenItemRepositoryGeneratedImpl _this;
  static const String _tableName = "OPEN_ITEM";
  static const String _primaryKey = "ID_OPEN_ITEM";

  _OpenItemRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<OpenItem> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return OpenItem.fromMap(map);
  }

  Future<List<OpenItem>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => OpenItem.fromMap(f)).toList();
  }

  Future<OpenItem> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => OpenItem.fromMap(f)).first : OpenItem();
  }

  Future<Iterable<OpenItem>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => OpenItem.fromMap(f));
  }
Future<bool> save(OpenItem model) async {
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
abstract class OpenItemRepository extends _OpenItemRepositoryGenerated {
  factory OpenItemRepository() = _OpenItemRepositoryImpl;
}

class _OpenItemRepositoryImpl extends _OpenItemRepositoryGeneratedImpl
    implements OpenItemRepository {
  static _OpenItemRepositoryImpl _this;
  factory _OpenItemRepositoryImpl() {
    if (_this == null) {
      _this = new _OpenItemRepositoryImpl._();
    }
    return _this;
  }
  _OpenItemRepositoryImpl._();
}
*/
