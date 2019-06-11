import 'package:database_access_layer/Entities/prd_favorite_highlight.gen.dart';
import 'base_provider.dart';

abstract class _PrdFavoriteHighlightRepositoryGenerated {
  Future<PrdFavoriteHighlight> getInstance(int idAgent);
  Future<bool> save(PrdFavoriteHighlight agent);
  Future<List<PrdFavoriteHighlight>> retrieveAll();
}

class _PrdFavoriteHighlightRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrdFavoriteHighlightRepositoryGeneratedImpl _this;
  static const String _tableName = "PRD_FAVORITE_HIGHLIGHT";
  static const String _primaryKey = "ID_FAVORITE_HIGHLIGHT";

  _PrdFavoriteHighlightRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrdFavoriteHighlight> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrdFavoriteHighlight.fromMap(map);
  }

  Future<List<PrdFavoriteHighlight>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrdFavoriteHighlight.fromMap(f)).toList();
  }

  Future<PrdFavoriteHighlight> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrdFavoriteHighlight.fromMap(f)).first : PrdFavoriteHighlight();
  }

  Future<Iterable<PrdFavoriteHighlight>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrdFavoriteHighlight.fromMap(f));
  }
Future<bool> save(PrdFavoriteHighlight model) async {
    bool result;
    if (model.idFavoriteHighlight == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idFavoriteHighlight = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idFavoriteHighlight.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrdFavoriteHighlightRepository extends _PrdFavoriteHighlightRepositoryGenerated {
  factory PrdFavoriteHighlightRepository() = _PrdFavoriteHighlightRepositoryImpl;
}

class _PrdFavoriteHighlightRepositoryImpl extends _PrdFavoriteHighlightRepositoryGeneratedImpl
    implements PrdFavoriteHighlightRepository {
  static _PrdFavoriteHighlightRepositoryImpl _this;
  factory _PrdFavoriteHighlightRepositoryImpl() {
    if (_this == null) {
      _this = new _PrdFavoriteHighlightRepositoryImpl._();
    }
    return _this;
  }
  _PrdFavoriteHighlightRepositoryImpl._();
}
*/
