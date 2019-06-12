
part of '../../repositories/csh/invoice_repository.dart';

abstract class _InvoiceRepositoryGenerated {
  Future<Invoice> getInstance(int idAgent);
  Future<List<Invoice>> retrieveAll();

 Future<bool> save(Invoice agent);
}
class _InvoiceRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _InvoiceRepositoryGeneratedImpl _this;
  static const String _tableName = "INVOICE";
  static const String _primaryKey = "ID_CASH_INVOICE";

  _InvoiceRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<Invoice> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return Invoice.fromMap(map);
  }

  Future<List<Invoice>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => Invoice.fromMap(f)).toList();
  }

  Future<Invoice> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => Invoice.fromMap(f)).first : Invoice();
  }

  Future<Iterable<Invoice>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => Invoice.fromMap(f));
  }
Future<bool> save(Invoice model) async {
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
abstract class InvoiceRepository extends _InvoiceRepositoryGenerated {
  factory InvoiceRepository() = _InvoiceRepositoryImpl;
}

class _InvoiceRepositoryImpl extends _InvoiceRepositoryGeneratedImpl
    implements InvoiceRepository {
  static _InvoiceRepositoryImpl _this;
  factory _InvoiceRepositoryImpl() {
    if (_this == null) {
      _this = new _InvoiceRepositoryImpl._();
    }
    return _this;
  }
  _InvoiceRepositoryImpl._();
}
*/
