import 'package:database_access_layer/generated_entity/cus/contract.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/cus/contract_repository.gen.dart';

abstract class ContractRepository extends _ContractRepositoryGenerated {
  factory ContractRepository() = _ContractRepositoryImpl;
}

class _ContractRepositoryImpl extends _ContractRepositoryGeneratedImpl
    implements ContractRepository {
  static _ContractRepositoryImpl _this;
  factory _ContractRepositoryImpl() {
    if (_this == null) {
      _this = new _ContractRepositoryImpl._();
    }
    return _this;
  }
  _ContractRepositoryImpl._();
}

