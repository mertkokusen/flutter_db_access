import 'package:database_access_layer/Entities/cus_product_exclusion_detail.gen.dart';
import 'base_provider.dart';

abstract class _CusProductExclusionDetailRepositoryGenerated {
  Future<CusProductExclusionDetail> getInstance(int idAgent);
  Future<bool> save(CusProductExclusionDetail agent);
  Future<List<CusProductExclusionDetail>> retrieveAll();
}

class _CusProductExclusionDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CusProductExclusionDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "CUS_PRODUCT_EXCLUSION_DETAIL";
  static const String _primaryKey = "ID_PRODUCT_EXCLUSION_DETAIL";

  _CusProductExclusionDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CusProductExclusionDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CusProductExclusionDetail.fromMap(map);
  }

  Future<List<CusProductExclusionDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CusProductExclusionDetail.fromMap(f)).toList();
  }

  Future<CusProductExclusionDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CusProductExclusionDetail.fromMap(f)).first : CusProductExclusionDetail();
  }

  Future<Iterable<CusProductExclusionDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CusProductExclusionDetail.fromMap(f));
  }
Future<bool> save(CusProductExclusionDetail model) async {
    bool result;
    if (model.idProductExclusionDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idProductExclusionDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idProductExclusionDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CusProductExclusionDetailRepository extends _CusProductExclusionDetailRepositoryGenerated {
  factory CusProductExclusionDetailRepository() = _CusProductExclusionDetailRepositoryImpl;
}

class _CusProductExclusionDetailRepositoryImpl extends _CusProductExclusionDetailRepositoryGeneratedImpl
    implements CusProductExclusionDetailRepository {
  static _CusProductExclusionDetailRepositoryImpl _this;
  factory _CusProductExclusionDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _CusProductExclusionDetailRepositoryImpl._();
    }
    return _this;
  }
  _CusProductExclusionDetailRepositoryImpl._();
}
*/
