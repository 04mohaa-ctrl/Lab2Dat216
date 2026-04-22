import 'package:flutter/material.dart';
import '../widgets/ingredient_control.dart';
import '../widgets/kitchen_control.dart';
import '../widgets/difficulty_control.dart';
import '../widgets/price_control.dart';
import '../widgets/recipe_list.dart';
class MainView extends StatelessWidget {
  const MainView({super.key});

@override
Widget build(BuildContext context) {
   return Scaffold(
     body: Row(children: [_controlPanel(context), _recipeArea(context)]),
   );
}

Widget _controlPanel(context, {double width = 335}) {
  return Container(
    width: width,
    color: const Color.fromARGB(255, 193, 210, 218),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Receptsök"),
        const SizedBox(height: 8),
        const Text("Hitta ett recept som passar genom att ändra inställningarna nedanför"),

        const SizedBox(height: 16),

        Row(
          children: const [
            Text('Ingrediens:'),
            SizedBox(width: 12),
            IngredientControl(),
          ],
        ),

        const SizedBox(height: 16),

        Row(
          children: const [
            Text('Kök:'),
            SizedBox(width: 12),
            KitchenControl(),
          ],
        ),
        const SizedBox(height: 16),

const Text('Svårighetsgrad'),

DifficultyControl(),
const SizedBox(height: 16),

const Text('Maxpris'),

PriceControl(),

const SizedBox(height: 16),

const Text('Tillagningstid'),

PriceControl(),
      ],
    ),
  );
}

Widget _recipeArea(context) {
  return Expanded(
    child: Container(
      //color: const Color.fromARGB(255, 204, 216, 176),
      child: RecipeList(),
    ),
 );
}
}