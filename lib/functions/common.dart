
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:juicyfood/models/category.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:search_page/search_page.dart';

changeStatusBarColor(BuildContext context) {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Theme.of(context).accentColor,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark
  ));
}

appBar(String title, KFDrawerContent widget) {
  return AppBar(
    centerTitle: true,
    title: Text(title),
    actions: [
      IconButton(
        onPressed: widget.onMenuPressed,
        icon: Icon(Icons.menu, color: Colors.white,),
      )
    ],
  );
}

openSearchPage(BuildContext context) {
  return showSearch(
    context: context,
    delegate: SearchPage<Category>(
      items: listOfCategories,
      searchLabel: 'Search Category',
      suggestion: Center(
        child: Text('Filter category by category name'),
      ),
      failure: Center(
        child: Text('Nothing found :('),
      ),
      filter: (category) => [
        category.categoryName,
        category.categoryDetails,
      ],
      builder: (category) => ListTile(
        onTap: () {
          Get.toNamed('/CategoryScreen', arguments: category);
        },
        title: Text(category.categoryName),
        subtitle: Text(category.categoryDetails),
        trailing: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(category.categoryImagePath),
        ),
      ),
    ),
  );
}