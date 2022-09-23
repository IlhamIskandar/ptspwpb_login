import 'package:flutter/material.dart';
import 'package:apps_loginpwpb/login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: MaterialButton(
          minWidth: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 25),
          onPressed: () {
            Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder:(context) => login()),
                    (route) => false);
          },
          color: Color(0xff6d5ecb),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Text(
              'Kembali',
            style: TextStyle(

              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

    );;
  }
}
