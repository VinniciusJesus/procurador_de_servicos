import 'package:find_services/app/constants/index.dart';
import 'package:find_services/features/firebase/firebase_add_collection/firebase_add_collection.dart';
import 'package:find_services/modules/add_service/domain/entities/add_service_params.dart';

import 'index.dart';

class AddServiceImpl implements IAddService {
  @override
  Future<void> addService(AddServiceParams params) async {
    await FirebaseAddCollection().addCollection(
        collectionTitle: FirestoreConstantsCollections.servicesCollection,
        data: {
          "title": params.title,
          "serviceType": params.serviceType,
          "description": params.description,
          "cellphone": params.cellphone,
        });
  }
}
