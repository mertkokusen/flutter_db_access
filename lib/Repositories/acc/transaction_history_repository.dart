import 'package:database_access_layer/entities/acc/transaction_history.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/acc/transaction_history_repository.gen.dart';

abstract class TransactionHistoryRepository extends _TransactionHistoryRepositoryGenerated {
  factory TransactionHistoryRepository() = _TransactionHistoryRepositoryImpl;
}

class _TransactionHistoryRepositoryImpl extends _TransactionHistoryRepositoryGeneratedImpl
    implements TransactionHistoryRepository {
  static _TransactionHistoryRepositoryImpl _this;
  factory _TransactionHistoryRepositoryImpl() {
    if (_this == null) {
      _this = new _TransactionHistoryRepositoryImpl._();
    }
    return _this;
  }
  _TransactionHistoryRepositoryImpl._();
}

