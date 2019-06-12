
part of '../../repositories/cus/no_sales_reason_repository.dart';

abstract class _NoSalesReasonRepositoryGenerated {
  Future<NoSalesReason> getInstance(int idAgent);
  Future<List<NoSalesReason>> retrieveAll();

 Future<bool> save(NoSalesReason agent);
}
class _NoSalesReasonRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _NoSalesReasonRepositoryGeneratedImpl _this;
  static const String _tableName = "NO_SALES_REASON";
  static const String _primaryKey = "ID_NO_SALES_REASON";

  _NoSalesReasonRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<NoSalesReason> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return NoSalesReason.fromMap(map);
  }

  Future<List<NoSalesReason>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => NoSalesReason.fromMap(f)).toList();
  }

  Future<NoSalesReason> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => NoSalesReason.fromMap(f)).first : NoSalesReason();
  }

  Future<Iterable<NoSalesReason>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => NoSalesReason.fromMap(f));
  }
Future<bool> save(NoSalesReason model) async {
    bool result;
    if (model.idNoSalesReason == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idNoSalesReason = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idNoSalesReason.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class NoSalesReasonRepository extends _NoSalesReasonRepositoryGenerated {
  factory NoSalesReasonRepository() = _NoSalesReasonRepositoryImpl;
}

class _NoSalesReasonRepositoryImpl extends _NoSalesReasonRepositoryGeneratedImpl
    implements NoSalesReasonRepository {
  static _NoSalesReasonRepositoryImpl _this;
  factory _NoSalesReasonRepositoryImpl() {
    if (_this == null) {
      _this = new _NoSalesReasonRepositoryImpl._();
    }
    return _this;
  }
  _NoSalesReasonRepositoryImpl._();
}
*/
