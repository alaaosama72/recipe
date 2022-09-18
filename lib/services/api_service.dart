import 'dart:convert';
import 'dart:io';
import 'package:flutter_application_23/models/meal_plan_model.dart';
import 'package:flutter_application_23/models/recipe_model.dart';
import 'package:http/http.dart' as http;

import '../models/meal_model.dart';

double? fat;
List<Meals>? meals;

double? protein;

double? carbohydrates;

double? calories;

class APIService {
  APIService._instantiate();

  static final APIService instance = APIService._instantiate();

  final String _baseUrl = 'api.spoonacular.com';
  static const String API_KEY = 'd21fcc51eca544dba4e3388a0e5129c9';

  // Generate Meal Plan
  Future<MealPlan> generateMealPlan(
      {required int targetCalories, required String diet}) async {
    if (diet == 'None') diet = '';
    Map<String, String> parameters = {
      'timeFrame': 'day',
      'targetCalories': targetCalories.toString(),
      'diet': diet,
      'apiKey': API_KEY,
    };
    Uri uri = Uri.https(
      _baseUrl,
      '/recipes/mealplans/generate',
      parameters,
    );
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    try {
      var response = await http.get(uri, headers: headers);
      Map<String, dynamic> data = json.decode(response.body);
      MealPlan mealPlan = MealPlan.fromJson(json);
      return mealPlan;
    } catch (err) {
      print(err.toString());
      throw err;
    }
  }

  // Recipe Info
  Future<Recipe> fetchRecipe(String id) async {
    Map<String, String> parameters = {
      'includeNutrition': 'false',
      'apiKey': API_KEY,
    };
    Uri uri = Uri.https(
      _baseUrl,
      '/recipes/$id/information',
      parameters,
    );
    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    try {
      var response = await http.get(uri, headers: headers);
      Map<String, dynamic> data = json.decode(response.body);
      Recipe recipe = Recipe.fromJson(data);
      return recipe;
    } catch (err) {
      throw err.toString();
    }
  }
}
