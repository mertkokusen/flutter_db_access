import 'package:database_access_layer/generated_entity/cus/sales_org.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/sales_org_repository.gen.dart';

abstract class SalesOrgRepository extends _SalesOrgRepositoryGenerated {
  factory SalesOrgRepository() = _SalesOrgRepositoryImpl;
}

class _SalesOrgRepositoryImpl extends _SalesOrgRepositoryGeneratedImpl
    implements SalesOrgRepository {
  static _SalesOrgRepositoryImpl _this;
  factory _SalesOrgRepositoryImpl() {
    if (_this == null) {
      _this = new _SalesOrgRepositoryImpl._();
    }
    return _this;
  }
  _SalesOrgRepositoryImpl._();
}

