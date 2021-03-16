import 'package:MealsApp/models/meal.dart';
import 'package:MealsApp/widgets/meal_item.dart';
import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mealData =
        ModalRoute.of(context).settings.arguments as List<String, Meal>;

    return Scaffold(
      appBar: AppBar(
        title: Text("${mealData.id}"),
      ),
      body: Center(
        child: Text("the current meal is - ${mealData.title}"),
      ),
    );
  }
}
