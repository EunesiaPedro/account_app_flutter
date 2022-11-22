import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor:Colors.blue.shade800,
        primarySwatch: Colors.blue,

      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Insurance(),
            Products(),
            Account(),
            SignIn()


          ],
        ),

      ),
    );
  }
}

class SignIn extends StatelessWidget {
  const SignIn ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(

      margin: EdgeInsets.fromLTRB(50, 30,200, 5),
      padding: EdgeInsets.symmetric(horizontal:15, vertical:0),
      width:50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(29),

      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Sign In",




            ),
          )
        ],
      ),
    );
  }
}

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.fromLTRB(50, 80, 150, 10),
      padding: EdgeInsets.symmetric(horizontal:15, vertical:0),
      width:50,
      decoration: BoxDecoration(
        color: Colors.deepPurple.shade200,
        borderRadius: BorderRadius.circular(29),

      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Account",
              fillColor: Colors.blue.shade800,


            ),
          )
        ],
      ),
    );
  }
}


class Products extends StatelessWidget {
  const Products({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.fromLTRB(50, 25, 2, 15),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const[
          Expanded(
              child: Text("Find all your needs faster\nthan ever",
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
              fontSize:18,
              fontWeight: FontWeight.w700,
            ),

            ),

          ),

        ],
      ),
    );
  }
}



class Insurance extends StatelessWidget {
  const Insurance({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      padding:EdgeInsets.fromLTRB(50, 100, 0, 15),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const[
          Expanded(
            child:Text("Smart\nInsurance\nhere!",
            style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.none,
                fontWeight: FontWeight.w700,
              fontSize: 50),

             maxLines:3,

            ),

          ),




        ],
      ),
    );
  }
}

