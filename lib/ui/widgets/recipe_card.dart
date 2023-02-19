import 'package:flutter/material.dart';
import 'package:spoonacular_api/domain/model/recipe.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.center,
              child: Image.network(recipe.image),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                alignment: Alignment.center,
                child: Text(recipe.title, style: TextStyle(fontSize: 18))),
          )
        ],
      ),
    );
  }
}
