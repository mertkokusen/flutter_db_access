import 'package:database_access_layer/Entities/csh_invoice_detail.gen.dart';
import 'base_provider.dart';

abstract class _CshInvoiceDetailRepositoryGenerated {
  Future<CshInvoiceDetail> getInstance(int idAgent);
  Future<bool> save(CshInvoiceDetail agent);
  Future<List<CshInvoiceDetail>> retrieveAll();
}

class _CshInvoiceDetailRepositoryGeneratedImpl extends BaseRepositoryImpl {
  static _CshInvoiceDetailRepositoryGeneratedImpl _this;
  static const String _tableName = "CSH_INVOICE_DETAIL";
  static const String _primaryKey = "ID_INVOICE_DETAIL";

  _CshInvoiceDetailRepositoryGeneratedImpl() : super(table: _tableName, column: _primaryKey);

  Future<CshInvoiceDetail> getInstance(int idAgent) async {
    var map = await getItem(idAgent.toString());
    return CshInvoiceDetail.fromMap(map);
  }

  Future<List<CshInvoiceDetail>> retrieveAll() async {
    return (await this.getAllItems()).map((f) => CshInvoiceDetail.fromMap(f)).toList();
  }

  Future<CshInvoiceDetail> rawQueryMappedSingle(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.length > 0 ? result.map((f) => CshInvoiceDetail.fromMap(f)).first : CshInvoiceDetail();
  }

  Future<Iterable<CshInvoiceDetail>> rawQueryMappedMany(String sql, [List<dynamic> arguments]) async {
    var result = await this.rawQuery(sql, arguments);
    return result.map((f) => CshInvoiceDetail.fromMap(f));
  }
Future<bool> save(CshInvoiceDetail model) async {
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
abstract class CshInvoiceDetailRepository extends _CshInvoiceDetailRepositoryGenerated {
  factory CshInvoiceDetailRepository() = _CshInvoiceDetailRepositoryImpl;
}

class _CshInvoiceDetailRepositoryImpl extends _CshInvoiceDetailRepositoryGeneratedImpl
    implements CshInvoiceDetailRepository {
  static _CshInvoiceDetailRepositoryImpl _this;
  factory _CshInvoiceDetailRepositoryImpl() {
    if (_this == null) {
      _this = new _CshInvoiceDetailRepositoryImpl._();
    }
    return _this;
  }
  _CshInvoiceDetailRepositoryImpl._();
}
*/
