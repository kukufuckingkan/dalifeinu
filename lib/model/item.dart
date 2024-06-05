class Item {
  String id;
  String sku;
  List<Name> names;

  Item({required this.id, required this.sku, required this.names});
}

class Name {
  String value;
  String language;

  Name({required this.value, required this.language});
}
