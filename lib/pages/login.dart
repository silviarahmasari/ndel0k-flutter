import 'package:flutter/material.dart';
import 'pertama.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
            child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/logo.png',
                height: 200,
              ),
              Container(
                padding: EdgeInsets.only(top: 70),
                child: Text(
                  "Hi, welcome to ndel0k",
                  style:
                      new TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                width: MediaQuery.of(context).size.width * 0.8,
                child: Text(
                  "Order cinema tickets easily anytime anywhere without any worry",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 80),
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator.of(context).pushReplacement(MaterialPageRoute(
                    //     builder: (context){
                    //       return Pertama();
                    //     }
                    // ));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PertamaPage()));
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey.shade800),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.amberAccent.shade700),
                    ),
                  )
                ],
              ),
            ],
          ),
        )),
      ),
    );
  }
}
