import 'package:database_access_layer/entities/csh/invoice_detail.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/csh/invoice_detail_repository.gen.dart';

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

