import 'package:mobx/mobx.dart';
import '../../data/interactor/default_recipe_interactor.dart';
import '../../domain/interactor/recipe_interactor.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  final RecipeInteractor interactor = DefaultRecipeInteractor();

  @observable
  List<dynamic> value = [];

  @action
  Future fetchData() async {
    final result = await interactor.getRecipes();
    value = result;
  }
}
