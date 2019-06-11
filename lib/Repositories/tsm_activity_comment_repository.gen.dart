import 'package:database_access_layer/Entities/tsm_activity_comment.gen.dart';
import 'base_provider.dart';

abstract class _TsmActivityCommentRepositoryGenerated {
  Future<TsmActivityComment> getInstance(int idAgent);
  Future<bool> save(TsmActivityComment agent);
  Future<List<TsmActivityComment>> retrieveAll();
}

class _TsmActivityCommentRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _TsmActivityCommentRepositoryGeneratedImpl _this;
  static const String _tableName = "TSM_ACTIVITY_COMMENT";
  static const String _primaryKey = "ID_ACTIVITY_COMMENT";

  _TsmActivityCommentRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<TsmActivityComment> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return TsmActivityComment.fromMap(map);
  }

  Future<List<TsmActivityComment>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => TsmActivityComment.fromMap(f)).toList();
  }

  Future<TsmActivityComment> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => TsmActivityComment.fromMap(f)).first : TsmActivityComment();
  }

  Future<Iterable<TsmActivityComment>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => TsmActivityComment.fromMap(f));
  }
Future<bool> save(TsmActivityComment model) async {
    bool result;
    if (model.idActivityComment == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idActivityComment = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idActivityComment.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class TsmActivityCommentRepository extends _TsmActivityCommentRepositoryGenerated {
  factory TsmActivityCommentRepository() = _TsmActivityCommentRepositoryImpl;
}

class _TsmActivityCommentRepositoryImpl extends _TsmActivityCommentRepositoryGeneratedImpl
    implements TsmActivityCommentRepository {
  static _TsmActivityCommentRepositoryImpl _this;
  factory _TsmActivityCommentRepositoryImpl() {
    if (_this == null) {
      _this = new _TsmActivityCommentRepositoryImpl._();
    }
    return _this;
  }
  _TsmActivityCommentRepositoryImpl._();
}
*/
