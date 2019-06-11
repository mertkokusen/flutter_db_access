import 'package:database_access_layer/Entities/prd_assortment_list_detail.gen.dart';
import 'base_provider.dart';

abstract class _PrdAssortmentListDetailRepositoryGenerated {
  Future<PrdAssortmentListDetail> getInstance(int idAgent);
  Future<bool> save(PrdAssortmentListDetail agent);
  Future<List<PrdAssortmentListDetail>> retrieveAll();
}

class _PrdAssortmentListDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrdAssortmentListDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "PRD_ASSORTMENT_LIST_DETAIL";
  static const String _primaryKey = "ID_ASSORTMENT_LIST_DETAIL";

  _PrdAssortmentListDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrdAssortmentListDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrdAssortmentListDetail.fromMap(map);
  }

  Future<List<PrdAssortmentListDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrdAssortmentListDetail.fromMap(f)).toList();
  }

  Future<PrdAssortmentListDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrdAssortmentListDetail.fromMap(f)).first : PrdAssortmentListDetail();
  }

  Future<Iterable<PrdAssortmentListDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrdAssortmentListDetail.fromMap(f));
  }
Future<bool> save(PrdAssortmentListDetail model) async {
    bool result;
    if (model.idAssortmentListDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idAssortmentListDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idAssortmentListDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrdAssortmentListDetailRepository extends _PrdAssortmentListDetailRepositoryGenerated {
  factory PrdAssortmentListDetailRepository() = _PrdAssortmentListDetailRepositoryImpl;
}

class _PrdAssortmentListDetailRepositoryImpl extends _PrdAssortmentListDetailRepositoryGeneratedImpl
    implements PrdAssortmentListDetailRepository {
  static _PrdAssortmentListDetailRepositoryImpl _this;
  factory _PrdAssortmentListDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _PrdAssortmentListDetailRepositoryImpl._();
    }
    return _this;
  }
  _PrdAssortmentListDetailRepositoryImpl._();
}
*/
