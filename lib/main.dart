import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),

      ),
      body: Container(
        padding: const EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.email),
                hintText: "example@gmail.com",
                labelText: "Email",
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  hintText: "Password",
                  labelText: "Password",
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            RaisedButton(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child:const Text("Login",style: TextStyle(color: Colors.white),),
              onPressed: () {  },
            ),
          ],
        ),
      ),
    );
  }
}