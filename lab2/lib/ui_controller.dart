import 'package:flutter/material.dart';
import 'package:lab2/model/recipe_database/recipe.dart';

class UIController extends ChangeNotifier {
  bool _showRecipeList = true;
  Recipe? _selectedRecipe;

  bool get showRecipeList => _showRecipeList;
  Recipe? get selectedRecipe => _selectedRecipe;

  void selectRecipe(Recipe recipe) {
    _selectedRecipe = recipe;
    _showRecipeList = false;
    notifyListeners();
  }

  void deselectRecipe() {
    _selectedRecipe = null;
    _showRecipeList = true;
    notifyListeners();
  }
}