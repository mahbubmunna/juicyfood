import 'dart:math';

import 'package:flutter/material.dart';

class OrderedItem extends StatefulWidget {
  @override
  _OrderedItemState createState() => _OrderedItemState();
}

class _OrderedItemState extends State<OrderedItem> {
  int _foodQuantity = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(6)
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.fastfood, color: Colors.black12, size: 70,),
                    SizedBox(width: 16,),
                    SizedBox(
                      width: 150,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Food Name ${Random().nextInt(10)}',
                            style: TextStyle(fontWeight: FontWeight.bold),
                            textScaleFactor: 1.2, ),
                          SizedBox(height: 5,),
                          Text('Cras blandit consequat sapien ut cursus.')
                        ],
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text('\$${Random().nextInt(100)}',
                      textScaleFactor: 1.2,
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),),
                    SizedBox(height: 5,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: (){if (_foodQuantity > 0) setState(() {
                              _foodQuantity--;
                            });;},
                            child: Icon(Icons.remove, size: 16,)),
                        SizedBox(width: 4,),
                        Text('$_foodQuantity', textScaleFactor: 1.1,),
                        SizedBox(width: 4,),
                        GestureDetector(
                            onTap: (){ setState(() {
                              _foodQuantity++;
                            });},
                            child: Icon(Icons.add, size: 16,)),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Divider(),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: FlatButton(
                    onPressed: () {  },
                    child: Text('Reorder'),
                  ),
                ),
                VerticalDivider(color: Colors.black, thickness: 1,),
                Expanded(
                  child: FlatButton(
                    onPressed: () {  },
                    child: Text('Rate'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
