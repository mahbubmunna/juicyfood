
import 'package:juicyfood/config/string.dart';

class Menu {
  String menuName;
  String menuDetails;
  String menuRating;
  String menuTotalRating;
  String menuImage;

  Menu({this.menuName, this.menuDetails, this.menuRating, this.menuTotalRating,
    this.menuImage});

}

List<Menu> listOfMenus = [
  Menu(menuName: 'Combo Meals', menuDetails: 'Cras blandit consequat sapien ut cursus. Duis in mollis de magna. Sed sit amet nulla. Pellentesque non ex velit.  ', menuImage: localImagePath + 'meal.png', menuTotalRating: '2467', menuRating: '3.8' ),
  Menu(menuName: 'Burger', menuDetails: 'Cras blandit consequat sapien ut cursus. Duis in mollis de magna. Sed sit amet nulla. Pellentesque non ex velit.  ', menuImage: localImagePath + 'burger.png', menuTotalRating: '2467', menuRating: '4.1' ),
  Menu(menuName: 'Salad', menuDetails: 'Cras blandit consequat sapien ut cursus. Duis in mollis de magna. Sed sit amet nulla. Pellentesque non ex velit.  ', menuImage: localImagePath + 'salad.png', menuTotalRating: '2467', menuRating: '4.5' ),
  Menu(menuName: 'Deserts', menuDetails: 'Cras blandit consequat sapien ut cursus. Duis in mollis de magna. Sed sit amet nulla. Pellentesque non ex velit.  ', menuImage: localImagePath + 'cake.png', menuTotalRating: '2467', menuRating: '3.6' ),
  Menu(menuName: 'Drinks', menuDetails: 'Cras blandit consequat sapien ut cursus. Duis in mollis de magna. Sed sit amet nulla. Pellentesque non ex velit.  ', menuImage: localImagePath + 'juice.png', menuTotalRating: '2467', menuRating: '3.8' ),
];