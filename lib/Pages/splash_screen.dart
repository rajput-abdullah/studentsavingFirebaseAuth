import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:studentsaving/Constants/constant_colors.dart';
import 'package:studentsaving/Pages/budget_list.dart';
import 'package:studentsaving/Pages/sign_up_screen.dart';
import 'goals.dart';
import 'home_screen.dart';
import 'login.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const AuthenticationWrapper())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          color: ConstantColor.WHITE,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 120),
                          height: MediaQuery.of(context).size.height*0.15,
                          width: MediaQuery.of(context).size.width*0.45,
                          decoration: const BoxDecoration(

                              color:  ConstantColor.LIGHT_BLUE, //new Color.fromRGBO(255, 0, 0, 0.0),
                              borderRadius:  BorderRadius.only(
                                  bottomRight:  Radius.circular(50.0),
                                  topRight: Radius.circular(50.0))
                          ),

                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),

                          height: MediaQuery.of(context).size.height*0.15,
                          width: MediaQuery.of(context).size.width*0.36,
                          decoration: const BoxDecoration(
                              color:  ConstantColor.BLUE, //new Color.fromRGBO(255, 0, 0, 0.0),
                              borderRadius:  BorderRadius.only(
                                  bottomRight:  Radius.circular(50.0),
                                  topRight: Radius.circular(50.0))
                          ),

                        ),
                      ],
                    )
                  ],),
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset("assets/logo.png"),
                            ],
                          ),
                        ),
                        Expanded(

                          child: Stack(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 50),
                                    height: MediaQuery.of(context).size.height*0.15,
                                    width: MediaQuery.of(context).size.width*0.25,
                                    decoration: const BoxDecoration(

                                        color:  ConstantColor.LIGHT_YELLOW, //new Color.fromRGBO(255, 0, 0, 0.0),
                                        borderRadius:  BorderRadius.only(
                                            bottomLeft:  Radius.circular(50.0),
                                            topLeft: Radius.circular(50.0))
                                    ),

                                  ),
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  margin: const EdgeInsets.only(bottom:80, ),
                                  height: MediaQuery.of(context).size.height*0.15,
                                  width: MediaQuery.of(context).size.width*0.10,
                                  decoration: const BoxDecoration(
                                      color:  ConstantColor.YELLOW, //new Color.fromRGBO(255, 0, 0, 0.0),
                                      borderRadius:  BorderRadius.only(
                                          bottomLeft:  Radius.circular(50.0),
                                          topLeft: Radius.circular(50.0))
                                  ),

                                ),
                              ),
                            ],
                          ),
                        )

                      ],),
                    const Text(
                      "BUILD A BUDGET AND TRACK YOUR SAVING"
                      ,
                      style: TextStyle(color: Colors.black),
                    )

                  ],
                ),
              ),
              Expanded(

                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        margin: const EdgeInsets.only(bottom:180, ),
                        height: MediaQuery.of(context).size.height*0.15,
                        width: MediaQuery.of(context).size.width*0.35,
                        decoration: const BoxDecoration(
                            color:  ConstantColor.LIGHT_PINK, //new Color.fromRGBO(255, 0, 0, 0.0),
                            borderRadius:  BorderRadius.only(
                                bottomLeft:  Radius.circular(50.0),
                                topLeft: Radius.circular(50.0))
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 50, right: 50),
                          height: MediaQuery.of(context).size.height*0.15,
                          width: MediaQuery.of(context).size.width*0.55,
                          decoration: const BoxDecoration(
                              color:  ConstantColor.PINK,
                              borderRadius:  BorderRadius.all(
                                  Radius.circular(50.0))),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if(firebaseUser!=null)
    {
      return const HomeScreen();
    }
    else {
      return const Login();
    }
  }
}
