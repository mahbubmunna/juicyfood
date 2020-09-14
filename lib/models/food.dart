
import 'package:juicyfood/config/string.dart';

class Food {
  String foodName;
  String foodPrice;
  String foodImage;
  String foodDetails;
  String foodRating;

  Food({this.foodName, this.foodPrice, this.foodImage, this.foodDetails, this.foodRating});
}

List<Food> listOfFoods = [
  Food(foodRating: '4.3', foodName: 'Vegetable', foodPrice: '13', foodImage: localImagePath + 'vegetable.png', foodDetails: 'Yusc muagna '),
  Food(foodRating: '3.3', foodName: 'Delicious Cake', foodPrice: '5', foodImage: localImagePath + 'cake.png', foodDetails: 'Yusc muagna '),
  Food(foodRating: '2.3', foodName: 'Chicken', foodPrice: '6', foodImage: localImagePath + 'dinner.png', foodDetails: 'Yusc muagna '),
  Food(foodRating: '4.3', foodName: 'Complete Meal', foodPrice: '12', foodImage: localImagePath + 'food.png', foodDetails: 'Yusc muagna '),
  Food(foodRating: '2.3', foodName: 'Fruits', foodPrice: '4', foodImage: localImagePath + 'fruits.png', foodDetails: 'Yusc muagna Fusce '),
  Food(foodRating: '4.3', foodName: 'Healthy Food', foodPrice: '6', foodImage: localImagePath + 'healthy-food.png', foodDetails: 'Yusc '),
  Food(foodRating: '4.1', foodName: 'Sandwich', foodPrice: '9', foodImage: localImagePath + 'sandwich.png', foodDetails: 'Yusc muagna'),
];