import 'package:database_access_layer/Entities/ord_order_detail_promo.gen.dart';
import 'base_provider.dart';

abstract class _OrdOrderDetailPromoRepositoryGenerated {
  Future<OrdOrderDetailPromo> getInstance(int idAgent);
  Future<bool> save(OrdOrderDetailPromo agent);
  Future<List<OrdOrderDetailPromo>> retrieveAll();
}

class _OrdOrderDetailPromoRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _OrdOrderDetailPromoRepositoryGeneratedImpl _this;
  static const String _tableName = "ORD_ORDER_DETAIL_PROMO";
  static const String _primaryKey = "ID_ORDER_DETAIL_PROMO";

  _OrdOrderDetailPromoRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<OrdOrderDetailPromo> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return OrdOrderDetailPromo.fromMap(map);
  }

  Future<List<OrdOrderDetailPromo>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => OrdOrderDetailPromo.fromMap(f)).toList();
  }

  Future<OrdOrderDetailPromo> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => OrdOrderDetailPromo.fromMap(f)).first : OrdOrderDetailPromo();
  }

  Future<Iterable<OrdOrderDetailPromo>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => OrdOrderDetailPromo.fromMap(f));
  }
Future<bool> save(OrdOrderDetailPromo model) async {
    bool result;
    if (model.idOrderDetailPromo == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idOrderDetailPromo = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idOrderDetailPromo.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class OrdOrderDetailPromoRepository extends _OrdOrderDetailPromoRepositoryGenerated {
  factory OrdOrderDetailPromoRepository() = _OrdOrderDetailPromoRepositoryImpl;
}

class _OrdOrderDetailPromoRepositoryImpl extends _OrdOrderDetailPromoRepositoryGeneratedImpl
    implements OrdOrderDetailPromoRepository {
  static _OrdOrderDetailPromoRepositoryImpl _this;
  factory _OrdOrderDetailPromoRepositoryImpl() {
    if (_this == null) {
      _this = new _OrdOrderDetailPromoRepositoryImpl._();
    }
    return _this;
  }
  _OrdOrderDetailPromoRepositoryImpl._();
}
*/
