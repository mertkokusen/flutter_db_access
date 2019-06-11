import 'package:database_access_layer/Entities/csh_invoice.gen.dart';
import 'base_provider.dart';

abstract class _CshInvoiceRepositoryGenerated {
  Future<CshInvoice> getInstance(int idAgent);
  Future<bool> save(CshInvoice agent);
  Future<List<CshInvoice>> retrieveAll();
}

class _CshInvoiceRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CshInvoiceRepositoryGeneratedImpl _this;
  static const String _tableName = "CSH_INVOICE";
  static const String _primaryKey = "ID_CASH_INVOICE";

  _CshInvoiceRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CshInvoice> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CshInvoice.fromMap(map);
  }

  Future<List<CshInvoice>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CshInvoice.fromMap(f)).toList();
  }

  Future<CshInvoice> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CshInvoice.fromMap(f)).first : CshInvoice();
  }

  Future<Iterable<CshInvoice>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CshInvoice.fromMap(f));
  }
Future<bool> save(CshInvoice model) async {
    bool result;
    if (model.idCashInvoice == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idCashInvoice = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idCashInvoice.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class CshInvoiceRepository extends _CshInvoiceRepositoryGenerated {
  factory CshInvoiceRepository() = _CshInvoiceRepositoryImpl;
}

class _CshInvoiceRepositoryImpl extends _CshInvoiceRepositoryGeneratedImpl
    implements CshInvoiceRepository {
  static _CshInvoiceRepositoryImpl _this;
  factory _CshInvoiceRepositoryImpl() {
    if (_this == null) {
      _this = new _CshInvoiceRepositoryImpl._();
    }
    return _this;
  }
  _CshInvoiceRepositoryImpl._();
}
*/
