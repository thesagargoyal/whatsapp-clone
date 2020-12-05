import 'package:chat_application/presentation/screens/home_screen.dart';
import 'package:chat_application/presentation/widgets/theme/style.dart';
import 'package:flutter/material.dart';

class SetProfile extends StatefulWidget {
  @override
  _SetProfileState createState() => _SetProfileState();
}

class _SetProfileState extends State<SetProfile> {

  TextEditingController _nameController=TextEditingController();

  void dispose(){
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: <Widget>[
            Text(
              "Profile Info",
              style: TextStyle(
                color: greenColor,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            Text(
              "Please provide your name and optional Profile Photo",
              textAlign:TextAlign.center,
              style: TextStyle(
                color: greenColor,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _rowWidget(),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                  color: greenColor,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen(),),);
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _rowWidget() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: textIconColorGray,
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Icon(Icons.camera_alt),
          ),
          SizedBox(width: 8,),
          Expanded(
            child: TextField(
              controller: _nameController,
            decoration: InputDecoration(
              hintText: "Enter Your Name"
            ),
          ),
          ),
          SizedBox(
            width: 8.0,
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: textIconColorGray,
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Icon(Icons.insert_emoticon),
          ),
        ],
      ),
    );
  }
}
