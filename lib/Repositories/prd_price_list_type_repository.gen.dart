import 'package:database_access_layer/Entities/prd_price_list_type.gen.dart';
import 'base_provider.dart';

abstract class _PrdPriceListTypeRepositoryGenerated {
  Future<PrdPriceListType> getInstance(int idAgent);
  Future<bool> save(PrdPriceListType agent);
  Future<List<PrdPriceListType>> retrieveAll();
}

class _PrdPriceListTypeRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrdPriceListTypeRepositoryGeneratedImpl _this;
  static const String _tableName = "PRD_PRICE_LIST_TYPE";
  static const String _primaryKey = "ID_PRICE_LIST_TYPE";

  _PrdPriceListTypeRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrdPriceListType> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrdPriceListType.fromMap(map);
  }

  Future<List<PrdPriceListType>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrdPriceListType.fromMap(f)).toList();
  }

  Future<PrdPriceListType> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrdPriceListType.fromMap(f)).first : PrdPriceListType();
  }

  Future<Iterable<PrdPriceListType>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrdPriceListType.fromMap(f));
  }
Future<bool> save(PrdPriceListType model) async {
    bool result;
    if (model.idPriceListType == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idPriceListType = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idPriceListType.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrdPriceListTypeRepository extends _PrdPriceListTypeRepositoryGenerated {
  factory PrdPriceListTypeRepository() = _PrdPriceListTypeRepositoryImpl;
}

class _PrdPriceListTypeRepositoryImpl extends _PrdPriceListTypeRepositoryGeneratedImpl
    implements PrdPriceListTypeRepository {
  static _PrdPriceListTypeRepositoryImpl _this;
  factory _PrdPriceListTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _PrdPriceListTypeRepositoryImpl._();
    }
    return _this;
  }
  _PrdPriceListTypeRepositoryImpl._();
}
*/
