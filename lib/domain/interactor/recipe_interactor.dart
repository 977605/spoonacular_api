import 'package:spoonacular_api/domain/model/recipe.dart';

abstract class RecipeInteractor {
  Future<List<Recipe>> getRecipes();
}
