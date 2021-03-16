import 'package:MealsApp/models/meal.dart';
import 'package:flutter/material.dart';

class MealItem extends StatelessWidget {
  final Meal mealItem;

  MealItem(this.mealItem);

  void selectMeal(ctx) {
    Navigator.of(ctx)
        .pushNamed("/meal-details", arguments: {"mealItem": this.mealItem});
  }

  String get complexityText {
    switch (this.mealItem.complexity) {
      case Complexity.Simple:
        {
          return "Simple";
          break;
        }
      case Complexity.Hard:
        {
          return "Hard";
          break;
        }
      case Complexity.Challenging:
        {
          return "Challenging";
          break;
        }
      default:
        return "Unknown";
    }
  }

  String get affordabilityText {
    switch (this.mealItem.affordability) {
      case Affordablility.Affordable:
        {
          return "Affordable";
          break;
        }
      case Affordablility.Luxurious:
        {
          return "Luxurious";
          break;
        }
      case Affordablility.Pricey:
        {
          return "Pricey";
          break;
        }
      default:
        return "Unknown";
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    child: Image.network(
                      mealItem.imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      width: 300,
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      color: Colors.black54,
                      child: Text(
                        mealItem.title,
                        style: TextStyle(fontSize: 26, color: Colors.white),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.schedule),
                        SizedBox(
                          width: 6,
                        ),
                        Text("${mealItem.duration} min")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.work),
                        SizedBox(
                          width: 6,
                        ),
                        Text("${complexityText}")
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.monetization_on_rounded),
                        SizedBox(
                          width: 6,
                        ),
                        Text("${affordabilityText}")
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          elevation: 4,
          margin: EdgeInsets.all(10),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))),
    );
  }
}
