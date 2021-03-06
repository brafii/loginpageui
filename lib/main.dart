import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Container(
                padding: EdgeInsets.fromLTRB(35.0, 120.0, 35.0, 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('images/logo.png', width: 265.0),
                    SizedBox(height: 90.0,),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff01d859)),
                        ),
                      ),
                    ),
                    SizedBox(height: 50.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff01d859)),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Forgot Password',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff01d859),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 35.0),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      width: double.infinity,
                      child: Text(
                        'LOGIN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xff01d859),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      padding: EdgeInsets.all(20.0),
                      width: double.infinity,
                      child: Text(
                        'Log in with Facebook',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(40.0),
                        border: Border.all(color: Colors.black, width: 2.0),
                      ),
                    ),
                    SizedBox(height: 25.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('New to Spotify?'),
                        SizedBox(width: 2.0),
                        Text('Register',
                          style: TextStyle(
                            color: Color(0xff01d859),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
