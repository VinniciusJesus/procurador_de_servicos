import '../../../../local_storage/cache/index.dart';
import '../../entities/index.dart';

abstract class ILocalStorageSaveUser {
  final CacheImpl cache = CacheImpl();
  Future<void> call(LoggedUserParams params);
}
