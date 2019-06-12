import 'package:database_access_layer/generated_entity/cus/contract_assortment_list.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/contract_assortment_list_repository.gen.dart';

abstract class ContractAssortmentListRepository extends _ContractAssortmentListRepositoryGenerated {
  factory ContractAssortmentListRepository() = _ContractAssortmentListRepositoryImpl;
}

class _ContractAssortmentListRepositoryImpl extends _ContractAssortmentListRepositoryGeneratedImpl
    implements ContractAssortmentListRepository {
  static _ContractAssortmentListRepositoryImpl _this;
  factory _ContractAssortmentListRepositoryImpl() {
    if (_this == null) {
      _this = new _ContractAssortmentListRepositoryImpl._();
    }
    return _this;
  }
  _ContractAssortmentListRepositoryImpl._();
}

