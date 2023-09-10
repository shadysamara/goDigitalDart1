class Meal {
  String? name;
  String? image;
  List<Extra>? extras;
  List<Ingredient>? ingreditns;
  Meal(Map map) {
    name = map["name"];
    image = map["image"];
    Map extraMap = map["extras"];
    // ["bread","cheese","olives"]
    List extraMapKeys = extraMap.keys.toList();
    extras = extraMapKeys.map((e) {
      return Extra(e, extraMap[e]);
    }).toList();
    List<Map> ingreditnsList = map["ingreditns"];
    ingreditns = ingreditnsList.map((e) => Ingredient(e)).toList();
  }
}

class Extra {
  String? name;
  List<ExtraItem>? extaItems;
  Extra(String name, List<Map> value) {
    this.name = name;
    extaItems = value.map((e) {
      return ExtraItem(e);
    }).toList();
  }
}

class ExtraItem {
  String? size;
  String? price;
  String? quantity;

  ExtraItem(Map map) {
    size = map["size"];
    price = map["price"];
    quantity = map["quantity"];
  }
}

class Ingredient {
  String? name;
  List? contents;
  int? price;
  String? currency;
  Ingredient(Map map) {
    price = map["price"];
    currency = map["currency"];
    name = map.keys.first;
    contents = map[name];
  }
}
