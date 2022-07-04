import 'package:flutter/material.dart';

class page_login extends StatefulWidget {
  page_login({Key? key}) : super(key: key);

  @override
  State<page_login> createState() => _page_loginState();
}

class _page_loginState extends State<page_login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('assets/images/login.png', fit: BoxFit.cover,),
            ),
        ],
      ),
    );
  }
}