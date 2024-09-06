import 'package:flutter/cupertino.dart';

class RegisterViewModel with ChangeNotifier {
  late BuildContext context;

  void attachedContext(BuildContext context) {
    this.context = context;
    notifyListeners();
  }
}
