import 'package:find_services/app/constants/index.dart';
import 'package:get_storage/get_storage.dart';

import 'index.dart';

class CacheImpl implements ICache {
  final _getStorage = GetStorage(BaseApp.title);

  @override
  Future<void> delete(String key) async {
    await _getStorage.remove(key);
  }

  @override
  Future fetch(String key) async {
    return await _getStorage.read(key);
  }

  @override
  Future<void> save(String key, value) async {
    await _getStorage.write(key, value);
  }
}
