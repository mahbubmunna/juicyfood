
import 'package:juicyfood/config/string.dart';

class Restaurant {
  String restaurantName;
  String restaurantRating;
  String restaurantDeliveryTime;
  String restaurantDeliveryCharge;
  String restaurantFoodItemPicture;
  String restaurantAllFoods;
  String restaurantTotalRating;
  String restaurantDistance;
  String restaurantRegularHours = '09:00 - 22:00';
  String restaurantOffDayHours = '14:00 - 22-00';
  String restaurantAddress = 'Address: 02133, 23, Salem str., Boston, MA, USA';
  String restaurantPhoneNumber = '(617) 397 8384';

  Restaurant({this.restaurantName, this.restaurantRating,
    this.restaurantTotalRating, this.restaurantDistance,
    this.restaurantDeliveryCharge, this.restaurantDeliveryTime,
    this.restaurantFoodItemPicture, this.restaurantAllFoods});
}

List<Restaurant> listOfRestaurant = [
  Restaurant(restaurantDistance: '3.4', restaurantTotalRating: '2469', restaurantName: 'La Visca', restaurantAllFoods: 'Burger, Coffee, Pizza', restaurantDeliveryCharge: '\$5.40', restaurantDeliveryTime: '37', restaurantFoodItemPicture: localImagePath + 'restaurant-1.jpg', restaurantRating: '3.3'),
  Restaurant(restaurantDistance: '3.4', restaurantTotalRating: '2469', restaurantName: 'Hotel Paradise', restaurantAllFoods: 'Burger, Coffee, Pizza', restaurantDeliveryCharge: '\$5.40', restaurantDeliveryTime: '37', restaurantFoodItemPicture: localImagePath + 'restaurant-2.jpg', restaurantRating: '3.4'),
  Restaurant(restaurantDistance: '3.4', restaurantTotalRating: '2469', restaurantName: 'Raz Darbar', restaurantAllFoods: 'Burger, Coffee, Pizza', restaurantDeliveryCharge: '\$5.40', restaurantDeliveryTime: '37', restaurantFoodItemPicture: localImagePath + 'restaurant-3.jpg', restaurantRating: '4.3'),
  Restaurant(restaurantDistance: '3.4', restaurantTotalRating: '2469', restaurantName: 'Mila Santoki', restaurantAllFoods: 'Burger, Coffee, Pizza', restaurantDeliveryCharge: '\$5.40', restaurantDeliveryTime: '37', restaurantFoodItemPicture: localImagePath + 'restaurant-4.jpg', restaurantRating: '3.4'),
  Restaurant(restaurantDistance: '3.4', restaurantTotalRating: '2469', restaurantName: 'Maki Abasin Vadalin', restaurantAllFoods: 'Burger, Coffee, Pizza', restaurantDeliveryCharge: '\$5.40', restaurantDeliveryTime: '37', restaurantFoodItemPicture: localImagePath + 'restaurant-5.jpg', restaurantRating: '2.3'),
  Restaurant(restaurantDistance: '3.4', restaurantTotalRating: '2469', restaurantName: 'Ofakub Mafila', restaurantAllFoods: 'Burger, Coffee, Pizza', restaurantDeliveryCharge: '\$5.40', restaurantDeliveryTime: '37', restaurantFoodItemPicture: localImagePath + 'restaurant-6.jpg', restaurantRating: '3.7'),
  Restaurant(restaurantDistance: '3.4', restaurantTotalRating: '2469', restaurantName: 'Valtini Facinat', restaurantAllFoods: 'Burger, Coffee, Pizza', restaurantDeliveryCharge: '\$5.40', restaurantDeliveryTime: '37', restaurantFoodItemPicture: localImagePath + 'restaurant-7.jpg', restaurantRating: '4.3'),
  Restaurant(restaurantDistance: '3.4', restaurantTotalRating: '2469', restaurantName: 'Aflatun Misnat', restaurantAllFoods: 'Burger, Coffee, Pizza', restaurantDeliveryCharge: '\$5.40', restaurantDeliveryTime: '37', restaurantFoodItemPicture: localImagePath + 'restaurant-8.jpg', restaurantRating: '3.9'),
];