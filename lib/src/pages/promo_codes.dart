import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:juicyfood/generated/l10n.dart';
import 'package:juicyfood/models/promo_code.dart';
import 'package:kf_drawer/kf_drawer.dart';

class PromoCodesScreen extends KFDrawerContent {
  @override
  _PromoCodesScreenState createState() => _PromoCodesScreenState();
}

class _PromoCodesScreenState extends State<PromoCodesScreen> {
  List<PromoCode> _promoList = [PromoCode('XDW34DFG', DateTime.now())];
  TextEditingController _promoCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).promocodes),
        actions: [
          IconButton(
            onPressed: widget.onMenuPressed,
            icon: Icon(Icons.menu, color: Colors.white,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(S.of(context).myPromoCodes, textScaleFactor: 1.8,),
              SizedBox(height: 5,),
              Text(S.of(context).youCanAddPromoCodesForLaterUseIWill),
              SizedBox(height: 40,),
              ListView.builder(
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                itemCount: _promoList.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(_promoList[index].promoCode, textScaleFactor: 1.3,),
                          Text(DateFormat.yMMMd().format(_promoList[index].dateTime), textScaleFactor: 1.3,),
                        ],
                      ),
                      SizedBox(height: 5,)
                    ],
                  );
                },
              ),
              SizedBox(height: 40,),
              TextField(
                controller: _promoCodeController,
                decoration: InputDecoration(
                  labelText: 'Add New Promo Code'
                ),
              ),
              SizedBox(height: 30,),
              Center(
                child: MaterialButton(
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  shape: StadiumBorder(),
                  minWidth: MediaQuery.of(context).size.width,
                  height: 45,
                  onPressed: () {
                    setState(() {
                      _promoList.add(PromoCode(_promoCodeController.text, DateTime.now()));
                      _promoCodeController.clear();
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Save', textScaleFactor: 1.4,),
                      SizedBox(width: 5,),
                      Icon(Icons.save)
                    ],
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );;
  }
}
