import 'package:chat_application/presentation/screens/registration_screen.dart';
import 'package:chat_application/presentation/widgets/theme/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Welcome to WhatsApp",
              style: TextStyle(
                color: greenColor,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
              Container(
                height: 290,
                width: 290,
                child: Image.asset("images/brand.png"),
              ),
              Column(
                children: <Widget>[
                  Text("Read out privacy policy Tap, 'Agree and continue' to accept the Terms of Services",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize:14
                    ),
                  ),
                  SizedBox(height: 30,),
                  MaterialButton(
                    onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_) => RegistrationScreen(),),);
                  },
                    color: greenColor,
                  child: Text("AGREE AND CONTINUE",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
