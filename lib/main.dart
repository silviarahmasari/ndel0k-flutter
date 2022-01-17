import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'pages/login.dart';
import 'model/preferensi.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Preferensi().init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Tiket Nonton',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: SplashScreen(
        seconds: 10,
        navigateAfterSeconds: Login(),
        image: Image.asset('assets/logo.png'),
        photoSize: 100,
        backgroundColor: Colors.blueGrey[800],
        loaderColor: Colors.white,
      ),
    );
  }
}
