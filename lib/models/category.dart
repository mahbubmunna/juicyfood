
import 'package:juicyfood/config/string.dart';

class Category {
  String categoryName;
  String categoryDetails;
  String categoryImagePath;
  String categoryLongDetails;

  Category({this.categoryName, this.categoryLongDetails , this.categoryDetails, this.categoryImagePath});

}

List<Category> listOfCategories = [
  Category(categoryName: 'Burger', categoryDetails: 'Lorem ipsum', categoryImagePath: localImagePath + 'burger.png', categoryLongDetails: 'Cras blandit consequat sapien ut cursus. Duis in mollis no magna. Sed sit amet nulla. Pellentesque non ex velit.  '),
  Category(categoryName: 'Pizza', categoryDetails: 'Lorem ipsum', categoryImagePath: localImagePath + 'pizza.png', categoryLongDetails: 'Cras blandit consequat sapien ut cursus. Duis in mollis no magna. Sed sit amet nulla. Pellentesque non ex velit.  '),
  Category(categoryName: 'Meat', categoryDetails: 'Lorem ipsum', categoryImagePath: localImagePath + 'meat.png', categoryLongDetails: 'Cras blandit consequat sapien ut cursus. Duis in mollis no magna. Sed sit amet nulla. Pellentesque non ex velit.  '),
  Category(categoryName: 'Grape', categoryDetails: 'Lorem ipsum', categoryImagePath: localImagePath + 'grapes.png', categoryLongDetails: 'Cras blandit consequat sapien ut cursus. Duis in mollis no magna. Sed sit amet nulla. Pellentesque non ex velit.  '),
  Category(categoryName: 'Pancake', categoryDetails: 'Lorem ipsum', categoryImagePath: localImagePath + 'pancake.png', categoryLongDetails: 'Cras blandit consequat sapien ut cursus. Duis in mollis no magna. Sed sit amet nulla. Pellentesque non ex velit.  '),
  Category(categoryName: 'Pineapple', categoryDetails: 'Lorem ipsum', categoryImagePath: localImagePath + 'pineapple.png', categoryLongDetails: 'Cras blandit consequat sapien ut cursus. Duis in mollis no magna. Sed sit amet nulla. Pellentesque non ex velit.  '),
  Category(categoryName: 'Drink', categoryDetails: 'Lorem ipsum', categoryImagePath: localImagePath + 'drink.png', categoryLongDetails: 'Cras blandit consequat sapien ut cursus. Duis in mollis no magna. Sed sit amet nulla. Pellentesque non ex velit.  '),
  Category(categoryName: 'Coffee', categoryDetails: 'Lorem ipsum', categoryImagePath: localImagePath + 'coffee.png', categoryLongDetails: 'Cras blandit consequat sapien ut cursus. Duis in mollis no magna. Sed sit amet nulla. Pellentesque non ex velit.  '),
];