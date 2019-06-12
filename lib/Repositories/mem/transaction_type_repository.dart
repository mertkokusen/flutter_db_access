import 'package:database_access_layer/generated_entity/mem/transaction_type.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/mem/transaction_type_repository.gen.dart';

abstract class TransactionTypeRepository extends _TransactionTypeRepositoryGenerated {
  factory TransactionTypeRepository() = _TransactionTypeRepositoryImpl;
}

class _TransactionTypeRepositoryImpl extends _TransactionTypeRepositoryGeneratedImpl
    implements TransactionTypeRepository {
  static _TransactionTypeRepositoryImpl _this;
  factory _TransactionTypeRepositoryImpl() {
    if (_this == null) {
      _this = new _TransactionTypeRepositoryImpl._();
    }
    return _this;
  }
  _TransactionTypeRepositoryImpl._();
}

