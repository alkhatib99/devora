import 'package:flutter/material.dart';


class Login extends StatelessWidget {
   Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return Scaffold(
  body: const LoginPage(title: "LoginPage",),
);
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<LoginPage> createState() => _MyLoginPage();
}

class _MyLoginPage extends State<LoginPage> {

@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
child: Stack(
  fit: StackFit.expand,
  children: const [
    SizedBox(

 width: 120,
    ),
    SizedBox(

      child: Image(
          image:AssetImage(
              "")
      ),

    ),
    SizedBox(

    ),
    SizedBox(

    ),
  ],

),
    );

}
}
