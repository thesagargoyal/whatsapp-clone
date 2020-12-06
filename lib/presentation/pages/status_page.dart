import 'package:flutter/material.dart';
import 'package:chat_application/presentation/widgets/theme/style.dart';
import 'package:chat_application/presentation/pages/sub_pages/single_item_story_page.dart';

class StatusPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Stack(
          children: <Widget>[
            _customFloatingActionButton(),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 10,
                ),
                _storyWidget(),
                SizedBox(
                  height: 10,
                ),
                _recentStatus(),
                _listStories()
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _customFloatingActionButton() {
    return Positioned(
      right: 15,
      bottom: 20,
      child: Column(
        children: <Widget>[
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: Color(0xFFE8E8E8),
                borderRadius: BorderRadius.all(Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 4.0),
                      blurRadius: 0.50,
                      color: Colors.black.withOpacity(.2),
                      spreadRadius: 0.10)
                ]),
            child: Icon(
              Icons.edit,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 4.0),
                      blurRadius: 0.50,
                      color: Colors.black.withOpacity(.2),
                      spreadRadius: 0.10)
                ]),
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  Widget _storyWidget() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            height: 55,
            width: 55,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset("images/profile_default.png"),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "My Status",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "Tap to add",
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _recentStatus() {
    return Container(
      // margin: EdgeInsets.only(top: 4),
      height: 25,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Color(0xFFE8E8E8),
      ),
      child: Text("Recent Updates"),
    );
  }

  Widget _listStories() {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return SingleItemStoryPage();
        },
      ),
    );
  }
}
