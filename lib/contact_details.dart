import 'dart:ffi';

class ContactDetails {
  String? name;
  int? number;

  ContactDetails({this.name, this.number});

  static List<ContactDetails> details = [
    ContactDetails(name: "Kamal", number: 123),
  ];
}
