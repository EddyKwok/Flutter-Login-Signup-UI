import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_signup/ui/signin.dart';
import 'package:login_signup/ui/signup.dart';
import 'package:login_signup/ui/splashscreen.dart';
import 'package:login_signup/constants/constants.dart';

import 'ui/signin.dart';
import 'ui/signup.dart';
import 'ui/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      theme: ThemeData(primaryColor: kLeftPrimaryColor),
      routes: <String, WidgetBuilder>{
        SplashScreen.id: (BuildContext context) =>  SplashScreen(),
        SignInPage.id: (BuildContext context) =>  SignInPage(),
        SignUpScreen.id: (BuildContext context) =>  SignUpScreen(),
      },
      initialRoute: SplashScreen.id,
    );
  }
}



