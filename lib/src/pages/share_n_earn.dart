import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/generated/l10n.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'package:share/share.dart';

class ShareNEarn extends KFDrawerContent {
  @override
  _ShareNEarnState createState() => _ShareNEarnState();
}

class _ShareNEarnState extends State<ShareNEarn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).shareAndEarn),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Image.asset('assets/img/share_n_earn.png'),
              Text(
                'Share and Earn \$10',
                textScaleFactor: 1.7,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                S.of(context).lorem_ipsum,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 5),
                child: Text(
                  S.of(context).shareYourInviteCode,
                  textScaleFactor: 1.3,
                ),
              ),
              Container(
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(32)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        S.of(context).dummyShareCode,
                        textScaleFactor: 1.2,
                      ),
                      IconButton(
                        onPressed: () {
                          Share.share(S.of(context).heyJoinWantToEarn10DollarJustByInstalling);
                        },
                        icon: Icon(Icons.share),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
