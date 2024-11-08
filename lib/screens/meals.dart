import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screens/meal_details.dart';
import 'package:meals/widgets/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen(
      {super.key,
      this.title,
      required this.meals,
      required this.onToggleFavourite});

  final String? title;
  final List<Meal> meals;
  final void Function(Meal meal) onToggleFavourite;

  // Handle select meal
  void selectMeal(BuildContext context, Meal meal) {
    // Navigator.push(context, route)
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => MealDetails(
              meal: meal,
              onToggleFavourite: onToggleFavourite,
            )));
  }

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) => MealItem(
            meal: meals[index],
            onSelectMeal: (meal) {
              selectMeal(context, meal);
            }));

    if (meals.isEmpty) {
      content = const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Nothing here!', style: TextStyle(color: Colors.white)),
            SizedBox(
              height: 16.0,
            ),
            Text(
              'Try Selecting a different category',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      );
    }

    if (title == null) {
      return content;
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(title!),
        ),
        body: content);
  }
}
