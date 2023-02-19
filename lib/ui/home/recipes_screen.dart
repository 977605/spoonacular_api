import 'package:flutter/material.dart';
import 'package:spoonacular_api/ui/widgets/recipe_card.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'home_store.dart';

class RecipesScreen extends StatefulWidget {
  const RecipesScreen({Key? key}) : super(key: key);

  @override
  State<RecipesScreen> createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  final _viewModel = HomeStore();

  @override
  void initState() {
    super.initState();
    _viewModel.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Recipes'),
        ),
        body: Observer(builder: (_) {
          final data = _viewModel.value;
          return ListView.builder(
            itemBuilder: (_, i) => RecipeCard(
              recipe: data[i],
            ),
            itemCount: data.length,
          );
        }));
  }
}
