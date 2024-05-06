


import 'package:chatt/service/AppwriteClient.dart';
import 'package:kiwi/kiwi.dart';

void initializeKiwi(){

  KiwiContainer container=KiwiContainer();
  container
  .registerFactory((container) => AppWriteClientService());
}