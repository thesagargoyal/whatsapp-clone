import 'package:flutter/material.dart';
import 'package:chat_application/presentation/widgets/theme/style.dart';
import 'package:chat_application/presentation/pages/sub_pages/single_item_chat_user_page.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (_, index) {
                return SingleItemChatUserPage();
              },
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColor,
        child: Icon(Icons.chat),
      ),
    );
  }
}
