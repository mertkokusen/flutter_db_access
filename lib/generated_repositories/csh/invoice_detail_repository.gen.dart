
part of '../../repositories/csh/invoice_detail_repository.dart';

abstract class _InvoiceDetailRepositoryGenerated {
  Future<InvoiceDetail> getInstance(int idAgent);
  Future<List<InvoiceDetail>> retrieveAll();

 Future<bool> save(InvoiceDetail agent);
}
class _InvoiceDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _InvoiceDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "INVOICE_DETAIL";
  static const String _primaryKey = "ID_INVOICE_DETAIL";

  _InvoiceDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<InvoiceDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return InvoiceDetail.fromMap(map);
  }

  Future<List<InvoiceDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => InvoiceDetail.fromMap(f)).toList();
  }

  Future<InvoiceDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => InvoiceDetail.fromMap(f)).first : InvoiceDetail();
  }

  Future<Iterable<InvoiceDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => InvoiceDetail.fromMap(f));
  }
Future<bool> save(InvoiceDetail model) async {
    bool result;
    if (model.idInvoiceDetail == null) {
      var id = await insertItem(model.toMap());
      if (id != null) {
        //*Set auto-generated id.
        model.idInvoiceDetail = id;
        result = true;
      }
    } else {
      result = await updateItem(model.idInvoiceDetail.toString(), model.toMap());
    }
    return result;
  }

}
/*
abstract class InvoiceDetailRepository extends _InvoiceDetailRepositoryGenerated {
  factory InvoiceDetailRepository() = _InvoiceDetailRepositoryImpl;
}

class _InvoiceDetailRepositoryImpl extends _InvoiceDetailRepositoryGeneratedImpl
    implements InvoiceDetailRepository {
  static _InvoiceDetailRepositoryImpl _this;
  factory _InvoiceDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _InvoiceDetailRepositoryImpl._();
    }
    return _this;
  }
  _InvoiceDetailRepositoryImpl._();
}
*/
