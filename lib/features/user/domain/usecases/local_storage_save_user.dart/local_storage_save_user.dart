import '../../../../local_storage/cache/index.dart';
import '../../../../local_storage/cache_constants/index.dart';
import '../../entities/index.dart';
import 'index.dart';

class LocalStorageSaveUser implements ILocalStorageSaveUser {
  @override
  CacheImpl get cache => CacheImpl();

  @override
  Future<void> call(LoggedUserParams params) async {
    await cache.save(CacheUserPath.name, params.name);
    await cache.save(CacheUserPath.email, params.email);
    await cache.save(CacheUserPath.userID, params.userID);
  }
}
