import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:lab2/model/recipe_database/recipe.dart';
import 'package:lab2/ui_controller.dart';

class RecipeDetail extends StatelessWidget {
  const RecipeDetail(this.recipe, {super.key});

  final Recipe recipe;

  @override
  Widget build(BuildContext context) {
    var uiController = Provider.of<UIController>(context, listen: false);

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                uiController.deselectRecipe();
              },
            ),
          ),
          Text(
            recipe.name,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          recipe.customImage(width: 220, height: 220, fit: BoxFit.cover),
          const SizedBox(height: 12),
          Text('Beskrivning: ${recipe.description}'),
          const SizedBox(height: 12),
          Text('Instruktion: ${recipe.instruction}'),
        ],
      ),
    );
  }
}