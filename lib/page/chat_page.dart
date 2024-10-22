import 'package:flutter/material.dart';

import '../custom_widgets/custom_chat_text_icon.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Chat",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ChatIconText(
              image: 'assets/doctor_1.jpg',
              title: 'Mr.monad son',
              subTitle: 'This is our plan!!',
              showTime: '04:15 PM',
            ),
            ChatIconText(
              image: 'assets/doctor_2.jpg',
              title: 'Doctor Jon',
              subTitle: 'This is our plan!!',
              showTime: '08:11 AM',
            ),
            ChatIconText(
              image: 'assets/doctor_3.jpg',
              title: 'Dr.dartlang Chain',
              subTitle: 'This is our plan!!',
              showTime: '10:21 PM',
            ),
            ChatIconText(
              image: 'assets/doctor_1.jpg',
              title: 'Mr.monad son',
              subTitle: 'This is our plan!!',
              showTime: '04:15 PM',
            ),
            ChatIconText(
              image: 'assets/doctor_1.jpg',
              title: 'Mr.monad son',
              subTitle: 'This is our plan!!',
              showTime: '04:15 PM',
            ),
            ChatIconText(
              image: 'assets/doctor_2.jpg',
              title: 'Doctor Jon',
              subTitle: 'This is our plan!!',
              showTime: '08:11 AM',
            ),
            ChatIconText(
              image: 'assets/doctor_3.jpg',
              title: 'Dr.dartlang Chain',
              subTitle: 'This is our plan!!',
              showTime: '10:21 PM',
            ),
            ChatIconText(
              image: 'assets/doctor_2.jpg',
              title: 'Doctor Jon',
              subTitle: 'This is our plan!!',
              showTime: '08:11 AM',
            ),
            ChatIconText(
              image: 'assets/doctor_3.jpg',
              title: 'Dr.dartlang Chain',
              subTitle: 'This is our plan!!',
              showTime: '10:21 PM',
            ),
            ChatIconText(
              image: 'assets/doctor_1.jpg',
              title: 'Mr.monad son',
              subTitle: 'This is our plan!!',
              showTime: '04:15 PM',
            ),
            ChatIconText(
              image: 'assets/doctor_2.jpg',
              title: 'Doctor Jon',
              subTitle: 'This is our plan!!',
              showTime: '08:11 AM',
            ),
            ChatIconText(
              image: 'assets/doctor_3.jpg',
              title: 'Dr.dartlang Chain',
              subTitle: 'This is our plan!!',
              showTime: '10:21 PM',
            ),
          ],
        ),
      ),
    );
  }
}
