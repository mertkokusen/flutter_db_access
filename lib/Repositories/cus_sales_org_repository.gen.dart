import 'package:database_access_layer/Entities/cus_sales_org.gen.dart';
import 'base_provider.dart';

abstract class _CusSalesOrgRepositoryGenerated {
  Future<CusSalesOrg> getInstance(int idAgent);
  Future<bool> save(CusSalesOrg agent);
  Future<List<CusSalesOrg>> retrieveAll();
}

class _CusSalesOrgRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusSalesOrgRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_SALES_ORG";
  static const String _primaryKey = "ID_SALES_ORG";

  _CusSalesOrgRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusSalesOrg> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusSalesOrg.fromMap(map);
  }

  Future<List<CusSalesOrg>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusSalesOrg.fromMap(f)).toList();
  }

  Future<CusSalesOrg> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusSalesOrg.fromMap(f)).first : CusSalesOrg();
  }

  Future<Iterable<CusSalesOrg>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusSalesOrg.fromMap(f));
  }
Future<bool> save(CusSalesOrg model) async {
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
abstract class CusSalesOrgRepository extends _CusSalesOrgRepositoryGenerated {
  factory CusSalesOrgRepository() = _CusSalesOrgRepositoryImpl;
}

class _CusSalesOrgRepositoryImpl extends _CusSalesOrgRepositoryGeneratedImpl
    implements CusSalesOrgRepository {
  static _CusSalesOrgRepositoryImpl _this;
  factory _CusSalesOrgRepositoryImpl() {
    if (_this == null) {
      _this = new _CusSalesOrgRepositoryImpl._();
    }
    return _this;
  }
  _CusSalesOrgRepositoryImpl._();
}
*/
