
part of '../../repositories/cus/sales_org_repository.dart';

abstract class _SalesOrgRepositoryGenerated {
  Future<SalesOrg> getInstance(int idAgent);
  Future<List<SalesOrg>> retrieveAll();

 Future<bool> save(SalesOrg agent);
}
class _SalesOrgRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _SalesOrgRepositoryGeneratedImpl _this;
  static const String _tableName = "SALES_ORG";
  static const String _primaryKey = "ID_SALES_ORG";

  _SalesOrgRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<SalesOrg> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return SalesOrg.fromMap(map);
  }

  Future<List<SalesOrg>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => SalesOrg.fromMap(f)).toList();
  }

  Future<SalesOrg> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => SalesOrg.fromMap(f)).first : SalesOrg();
  }

  Future<Iterable<SalesOrg>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => SalesOrg.fromMap(f));
  }
Future<bool> save(SalesOrg model) async {
    bool result;
    if (model.idSalesOrg == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idSalesOrg = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idSalesOrg.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class SalesOrgRepository extends _SalesOrgRepositoryGenerated {
  factory SalesOrgRepository() = _SalesOrgRepositoryImpl;
}

class _SalesOrgRepositoryImpl extends _SalesOrgRepositoryGeneratedImpl
    implements SalesOrgRepository {
  static _SalesOrgRepositoryImpl _this;
  factory _SalesOrgRepositoryImpl() {
    if (_this == null) {
      _this = new _SalesOrgRepositoryImpl._();
    }
    return _this;
  }
  _SalesOrgRepositoryImpl._();
}
*/
