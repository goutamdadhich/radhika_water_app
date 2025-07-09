
import 'dart:html';
import 'firebase_service.dart';

void main() {
  querySelector('#submit')?.onClick.listen((e) {
    final name = (querySelector('#name') as InputElement).value ?? '';
    final area = (querySelector('#area') as InputElement).value ?? '';
    final contact = (querySelector('#contact') as InputElement).value ?? '';
    final rate = (querySelector('#rate') as InputElement).value ?? '';

    if (name.isNotEmpty && contact.isNotEmpty) {
      FirebaseService.addCustomer(name, area, contact, rate);
    }
  });
}
