import 'package:database_access_layer/entities/def/group_code_value.gen.dart';
import 'package:database_access_layer/repositories/base_provider.dart';

part '../../generated_repositories/def/group_code_value_repository.gen.dart';

abstract class GroupCodeValueRepository extends _GroupCodeValueRepositoryGenerated {
  factory GroupCodeValueRepository() = _GroupCodeValueRepositoryImpl;
}

class _GroupCodeValueRepositoryImpl extends _GroupCodeValueRepositoryGeneratedImpl
    implements GroupCodeValueRepository {
  static _GroupCodeValueRepositoryImpl _this;
  factory _GroupCodeValueRepositoryImpl() {
    if (_this == null) {
      _this = new _GroupCodeValueRepositoryImpl._();
    }
    return _this;
  }
  _GroupCodeValueRepositoryImpl._();
}

