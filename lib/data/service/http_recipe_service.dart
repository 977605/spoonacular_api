import 'dart:convert';
import 'package:spoonacular_api/domain/service/recipe_service.dart';
import 'package:spoonacular_api/domain/model/recipe.dart';
import 'package:http/http.dart' as http;
import 'package:spoonacular_api/data/constans/constans.dart';

class HttpRecipeService implements RecipeService {
  Future<List<Recipe>> fetchRecipes() async {
    var url = Uri.parse(
        'https://api.spoonacular.com/recipes/complexSearch?apiKey=$apiKey');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    final results = jsonDecode(response.body)['results'] as List<dynamic>;
    return results.map((obj) => Recipe.fromJson(obj)).toList();
  }
}
