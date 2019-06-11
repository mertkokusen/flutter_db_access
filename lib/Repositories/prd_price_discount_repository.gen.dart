import 'package:database_access_layer/Entities/prd_price_discount.gen.dart';
import 'base_provider.dart';

abstract class _PrdPriceDiscountRepositoryGenerated {
  Future<PrdPriceDiscount> getInstance(int idAgent);
  Future<bool> save(PrdPriceDiscount agent);
  Future<List<PrdPriceDiscount>> retrieveAll();
}

class _PrdPriceDiscountRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _PrdPriceDiscountRepositoryGeneratedImpl _this;
  static const String _tableName = "PRD_PRICE_DISCOUNT";
  static const String _primaryKey = "ID_PRICE_DISCOUNT";

  _PrdPriceDiscountRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<PrdPriceDiscount> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return PrdPriceDiscount.fromMap(map);
  }

  Future<List<PrdPriceDiscount>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => PrdPriceDiscount.fromMap(f)).toList();
  }

  Future<PrdPriceDiscount> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => PrdPriceDiscount.fromMap(f)).first : PrdPriceDiscount();
  }

  Future<Iterable<PrdPriceDiscount>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => PrdPriceDiscount.fromMap(f));
  }
Future<bool> save(PrdPriceDiscount model) async {
    bool result;
    if (model.idPriceDiscount == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idPriceDiscount = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idPriceDiscount.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class PrdPriceDiscountRepository extends _PrdPriceDiscountRepositoryGenerated {
  factory PrdPriceDiscountRepository() = _PrdPriceDiscountRepositoryImpl;
}

class _PrdPriceDiscountRepositoryImpl extends _PrdPriceDiscountRepositoryGeneratedImpl
    implements PrdPriceDiscountRepository {
  static _PrdPriceDiscountRepositoryImpl _this;
  factory _PrdPriceDiscountRepositoryImpl() {
    if (_this == null) {
      _this = new _PrdPriceDiscountRepositoryImpl._();
    }
    return _this;
  }
  _PrdPriceDiscountRepositoryImpl._();
}
*/
