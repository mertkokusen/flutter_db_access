import 'package:database_access_layer/generated_entity/csh/invoice.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/csh/invoice_repository.gen.dart';

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

