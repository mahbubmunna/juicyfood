import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:juicyfood/generated/l10n.dart';

class SendMessageScreen extends StatefulWidget {
  @override
  _SendMessageScreenState createState() => _SendMessageScreenState();
}

class _SendMessageScreenState extends State<SendMessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.of(context).sendMessage),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              SizedBox(height: 70,),
              Image.asset('assets/img/send_message.png'),
              Text(S.of(context).sendMessage, textScaleFactor: 1.7,),
              SizedBox(height: 5,),
              Text(S.of(context).lorem_ipsum, textAlign: TextAlign.center,),
              SizedBox(height: 40,),
              TextField(
                maxLines: 6,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
                  labelText: 'Your message',
                ),
              ),
              SizedBox(height: 10,),
              MaterialButton(
                shape: StadiumBorder(),
                elevation: 0,
                color: Theme.of(context).accentColor,
                onPressed: () { Get.snackbar('Sent', 'Your message has been sent', snackPosition: SnackPosition.BOTTOM);},
                child: ListTile(
                  leading: SizedBox(width: 32,),
                  title: Text(S.of(context).sendMessage, style: TextStyle(color: Colors.white),),
                  trailing: Icon(Icons.send, color: Colors.white,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
