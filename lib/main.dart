import 'package:MealsApp/screens/categories.dart';
import 'package:MealsApp/screens/category_meals.dart';
import 'package:MealsApp/screens/meal_detail.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: "Raleway",
          textTheme: ThemeData.light().textTheme.copyWith(
                body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
                title: TextStyle(
                    fontSize: 20,
                    fontFamily: "RobotoCondensed",
                    fontWeight: FontWeight.bold),
              )),
      home: CategoriesScreen(),
      routes: {
        "/category-meals": (ctx) => CategoryMealsScreen(),
        "/meal-details": (ctx) => MealDetailScreen()
      },
    );
  }
}
