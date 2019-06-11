import 'package:database_access_layer/Entities/org_hierarchy.gen.dart';
import 'base_provider.dart';

abstract class _OrgHierarchyRepositoryGenerated {
  Future<OrgHierarchy> getInstance(int idAgent);
  Future<bool> save(OrgHierarchy agent);
  Future<List<OrgHierarchy>> retrieveAll();
}

class _OrgHierarchyRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _OrgHierarchyRepositoryGeneratedImpl _this;
  static const String _tableName = "ORG_HIERARCHY";
  static const String _primaryKey = "ID_HIERARCHY";

  _OrgHierarchyRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<OrgHierarchy> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return OrgHierarchy.fromMap(map);
  }

  Future<List<OrgHierarchy>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => OrgHierarchy.fromMap(f)).toList();
  }

  Future<OrgHierarchy> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => OrgHierarchy.fromMap(f)).first : OrgHierarchy();
  }

  Future<Iterable<OrgHierarchy>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => OrgHierarchy.fromMap(f));
  }
Future<bool> save(OrgHierarchy model) async {
    bool result;
    if (model.idHierarchy == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idHierarchy = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idHierarchy.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class OrgHierarchyRepository extends _OrgHierarchyRepositoryGenerated {
  factory OrgHierarchyRepository() = _OrgHierarchyRepositoryImpl;
}

class _OrgHierarchyRepositoryImpl extends _OrgHierarchyRepositoryGeneratedImpl
    implements OrgHierarchyRepository {
  static _OrgHierarchyRepositoryImpl _this;
  factory _OrgHierarchyRepositoryImpl() {
    if (_this == null) {
      _this = new _OrgHierarchyRepositoryImpl._();
    }
    return _this;
  }
  _OrgHierarchyRepositoryImpl._();
}
*/
