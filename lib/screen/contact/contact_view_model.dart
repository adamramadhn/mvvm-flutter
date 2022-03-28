import 'package:flutter/cupertino.dart';

import '../../models/api/api.dart';
import '../../models/model.dart';

class ContactViewModel with ChangeNotifier {
  List<Model> _contacts = [];
  List<Model> get contacts => _contacts;

  getAllContacts() async {
    final c = await API.getContacts();
    _contacts = c;
    notifyListeners();
  }
}
