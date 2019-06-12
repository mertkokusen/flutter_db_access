import 'package:database_access_layer/generated_entity/acc/tax_matrix.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/acc/tax_matrix_repository.gen.dart';

abstract class TaxMatrixRepository extends _TaxMatrixRepositoryGenerated {
  factory TaxMatrixRepository() = _TaxMatrixRepositoryImpl;
}

class _TaxMatrixRepositoryImpl extends _TaxMatrixRepositoryGeneratedImpl
    implements TaxMatrixRepository {
  static _TaxMatrixRepositoryImpl _this;
  factory _TaxMatrixRepositoryImpl() {
    if (_this == null) {
      _this = new _TaxMatrixRepositoryImpl._();
    }
    return _this;
  }
  _TaxMatrixRepositoryImpl._();
}

