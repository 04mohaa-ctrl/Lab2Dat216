import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../util/cuisine.dart';
import '../model/recipe_database/recipe_handler.dart';

class KitchenControl extends StatelessWidget {
  const KitchenControl({super.key});

  @override
  Widget build(BuildContext context) {

    var recipeHandler = Provider.of<RecipeHandler>(context, listen: false);

    const labels = Cuisine.labels;

    return DropdownMenu<String>(
      width: 164,
      enableFilter: false,
      requestFocusOnTap: false,
      initialSelection: labels[0],
      dropdownMenuEntries: [
        for (final label in labels)
          DropdownMenuEntry(
            value: label,
            label: label,
          ),
      ],
      onSelected: (value) {
        recipeHandler.setCuisine(value);
      },
    );
  }
}