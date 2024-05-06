import 'package:appwrite/appwrite.dart';

class AppWriteClientService{

  Client getClient(){
    return Client()
        .setEndpoint('https://cloud.appwrite.io/v1') // Your API Endpoint
        .setProject('65b6a370cb2d6b4c3aa0');
  }

}