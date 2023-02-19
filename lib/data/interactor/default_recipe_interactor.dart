import '../service/http_recipe_service.dart';
import '../../domain/interactor/recipe_interactor.dart';
import 'package:spoonacular_api/domain/model/recipe.dart';
import '../../domain/service/recipe_service.dart';

class DefaultRecipeInteractor implements RecipeInteractor {
  final RecipeService _service = HttpRecipeService();

  @override
  Future<List<Recipe>> getRecipes() => _service.fetchRecipes();
}
