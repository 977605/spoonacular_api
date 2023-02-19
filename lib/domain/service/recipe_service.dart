import 'package:spoonacular_api/domain/model/recipe.dart';

abstract class RecipeService {
  Future<List<Recipe>> fetchRecipes();
}
