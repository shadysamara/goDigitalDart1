class Meal {
  int? id;
  String? name;
  String? description;
  List<MealItem>? mealItems;
  Meal({this.id, this.name, this.description, this.mealItems});

  Meal.fromMap(Map map) {
    id = map["id"];
    name = map["name"];
    description = map["description"];
    List<Map> data = map["meal_items"];
    mealItems = data.map((e) => MealItem.fromMap(e)).toList();
  }
}

class MealItem {
  int? id;
  String? name;
  int? price;
  MealItem({this.id, this.name, this.price});
  MealItem.fromMap(Map map) {
    id = map["id"];
    name = map["name"];
    price = map["price"];
  }
}
