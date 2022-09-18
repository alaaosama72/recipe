//import meal_model.dart

import 'meal_model.dart';

class MealPlan {
  var carbs;

  // MealPlan(
  //    this.meals,
  //    this.calories,
  //    this.carbohydrates,
  //    this.fat,
  //    this.protein,
  // );
   List<Meals> ?meals;
   double? calories;
   double ?carbohydrates;
   double ?fat;
   double ?protein;

    MealPlan.fromJson(  json) {
    List<Meals> meals = [];
    calories = json['calories'];
    carbohydrates = json['carbohydrates'];
    fat = json['fat'];
    protein = json['protein'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['calories'] = calories;
    _data['carbohydrates'] = carbohydrates;
    _data['fat'] = fat;
    _data['protein'] = protein;
    return _data;
  }
}
