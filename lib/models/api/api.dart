import 'package:api_testing/models/model.dart';
import 'package:dio/dio.dart';

class API {
  static Future<List<Model>> getContacts() async {
    final response = await Dio().get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts');
    List<Model> contact = (response.data as List)
        .map((e) => Model(id: e['id'], name: e['name'], phone: e['phone']))
        .toList();

    return contact;
  }
}
