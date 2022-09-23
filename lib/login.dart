import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:apps_loginpwpb/home.dart';

class login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

Widget buildEmail() {
  TextEditingController emailController = TextEditingController();
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Email',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          )),
      SizedBox(height: 18),
      Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: 14,
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: Color(0xff6d5ecb),
                ),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.black38)),
          ))
    ],
  );
}

Widget buildPassword() {
  TextEditingController passwordController = TextEditingController();

  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text('Password',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          )),
      SizedBox(height: 18),
      Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
              ]),
          height: 60,
          child: TextField(
            obscureText: true,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                  top: 14,
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Color(0xff6d5ecb),
                ),
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.black38)),
          ))
    ],
  );
}

Widget buildForgotPass() {
  return Container();
}

Widget buildLoginBtn() {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: MaterialButton(
      height: 45,
      onPressed: () {
        print(emailController.text);
        print(passwordController.text);
      },
      child: Text(
        'Login',
        style: TextStyle(
          color: Color(0xff6d5ecb),
          fontSize: 10,
          fontWeight: FontWeight.bold,
        ),
      ),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
  );
}

class _LoginState extends State<login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final String dbemail = "ilham@email.com";
  final String dbpassword = "login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child: Stack(children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                      Color(0x666d5ecb),
                      Color(0x996d5ecb),
                      Color(0xcc6d5ecb),
                      Color(0xff6d5ecb),
                    ])),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Login',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 50),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Email',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          )),
                      SizedBox(height: 18),
                      Container(
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
                              ]),
                          height: 60,
                          child: TextField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(color: Colors.black87),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(
                                  top: 14,
                                ),
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Color(0xff6d5ecb),
                                ),
                                hintText: 'Email',
                                hintStyle: TextStyle(color: Colors.black38)),
                          ))
                    ],
                  ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Password',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              )),
                          SizedBox(height: 18),
                          Container(
                              alignment: Alignment.centerLeft,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black26, blurRadius: 6, offset: Offset(0, 2))
                                  ]),
                              height: 60,
                              child: TextField(
                                controller: passwordController,
                                obscureText: true,
                                style: TextStyle(color: Colors.black87),
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.only(
                                      top: 14,
                                    ),
                                    prefixIcon: Icon(
                                      Icons.lock,
                                      color: Color(0xff6d5ecb),
                                    ),
                                    hintText: 'Password',
                                    hintStyle: TextStyle(color: Colors.black38)),
                              ))
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 25),
                        width: double.infinity,
                        child: MaterialButton(
                          height: 45,
                          onPressed: () {
                            if (emailController.text.length == 0){
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content : const Text('Email tidak boleh kosong'),
                              ));
                            } else if (passwordController.text.length == 0){
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content : const Text('Password tidak boleh kosong'),
                                // duration: const Duration(seconds: 2),
                              ));
                            }else if (emailController.text == this.dbemail && passwordController.text == this.dbpassword) {
                              Navigator.pushAndRemoveUntil(context,
                                  MaterialPageRoute(builder:(context) => const Home()),
                                      (route) => false);
                            }else  {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: const Text('Password atau Email Salah')
                              ));
                            }
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(
                              color: Color(0xff6d5ecb),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          )
      ),
    );
  }
}
