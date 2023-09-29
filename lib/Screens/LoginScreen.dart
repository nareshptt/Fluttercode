

import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'SignupScreen.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15,top: 15),
                child: Container(
                    alignment: Alignment.topLeft,
                    child: Text("Welcome back",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 30),)),
              ),

              SizedBox(
                height: 35,
              ),

              Container(
                height: 200,
                decoration: BoxDecoration(border: Border.all(color: Colors.blue),borderRadius: BorderRadius.circular(4)),
                child: Image.asset("assets/images/welcome.png"),
              ),
              SizedBox(
                height: 50,
              ),

              Container(
                width: 300,
                height: 55,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter email",
                    label: Text("Email"),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(color: Colors.blue,width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(color: Colors.grey,width: 2),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Container(
                width: 300,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    label: Text("Password"),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(color: Colors.blue,width: 2),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(color: Colors.grey,width: 2),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),

              Container(
                width: 300,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomeScreen(),),
                    );

                  }, child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),),
              ),

              SizedBox(
                height: 50,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account ?"),
                  TextButton(
                      child: Text("Register here",style: TextStyle(color: Colors.blue),),
                      onPressed:
                          (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const SignupScreen(),),
                        );
                      }),


                ],

              ),
            ],
          ),
        ),
      ),
    );
  }
}
