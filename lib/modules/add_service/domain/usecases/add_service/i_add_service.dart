import '../../entities/index.dart';

abstract class IAddService {
  Future<void> addService(AddServiceParams params);
}
