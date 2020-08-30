import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/generated/l10n.dart';

class FaqScreen extends StatefulWidget {
  @override
  _FaqScreenState createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  List _faqs = ['How to use the promo', 'How to make a order', 'How to search a restaurant'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).faq),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              SizedBox(height: 70,),
              Image.asset('assets/img/faq.png'),
              Text(S.of(context).faq, textScaleFactor: 1.7,),
              SizedBox(height: 5,),
              Text(S.of(context).lorem_ipsum, textAlign: TextAlign.center,),
              SizedBox(height: 40,),
              Container(
                height: 300,
                child: ListView.builder(
                  itemCount: _faqs.length,
                  itemBuilder: (context, index) {
                    return ExpansionTile(
                      title: Text(_faqs[index]),
                      children: [
                        Text(_faqs[index])
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
