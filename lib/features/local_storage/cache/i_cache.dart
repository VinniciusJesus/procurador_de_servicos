abstract class ICache {
  Future<dynamic> fetch(String key);
  Future<void> delete(String key);
  Future<void> save(String key, dynamic value);
}
