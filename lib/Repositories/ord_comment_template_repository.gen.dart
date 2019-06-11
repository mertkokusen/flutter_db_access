import 'package:database_access_layer/Entities/ord_comment_template.gen.dart';
import 'base_provider.dart';

abstract class _OrdCommentTemplateRepositoryGenerated {
  Future<OrdCommentTemplate> getInstance(int idAgent);
  Future<bool> save(OrdCommentTemplate agent);
  Future<List<OrdCommentTemplate>> retrieveAll();
}

class _OrdCommentTemplateRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _OrdCommentTemplateRepositoryGeneratedImpl _this;
  static const String _tableName = "ORD_COMMENT_TEMPLATE";
  static const String _primaryKey = "ID_COMMENT_TEMPLATE";

  _OrdCommentTemplateRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<OrdCommentTemplate> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return OrdCommentTemplate.fromMap(map);
  }

  Future<List<OrdCommentTemplate>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => OrdCommentTemplate.fromMap(f)).toList();
  }

  Future<OrdCommentTemplate> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => OrdCommentTemplate.fromMap(f)).first : OrdCommentTemplate();
  }

  Future<Iterable<OrdCommentTemplate>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => OrdCommentTemplate.fromMap(f));
  }
Future<bool> save(OrdCommentTemplate model) async {
    bool result;
    if (model.idCommentTemplate == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCommentTemplate = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCommentTemplate.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class OrdCommentTemplateRepository extends _OrdCommentTemplateRepositoryGenerated {
  factory OrdCommentTemplateRepository() = _OrdCommentTemplateRepositoryImpl;
}

class _OrdCommentTemplateRepositoryImpl extends _OrdCommentTemplateRepositoryGeneratedImpl
    implements OrdCommentTemplateRepository {
  static _OrdCommentTemplateRepositoryImpl _this;
  factory _OrdCommentTemplateRepositoryImpl() {
    if (_this == null) {
      _this = new _OrdCommentTemplateRepositoryImpl._();
    }
    return _this;
  }
  _OrdCommentTemplateRepositoryImpl._();
}
*/
