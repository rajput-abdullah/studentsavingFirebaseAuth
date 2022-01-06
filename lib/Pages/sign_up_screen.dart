import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:provider/src/provider.dart';
import 'package:studentsaving/Constants/Util.dart';
import 'package:studentsaving/Constants/constant_colors.dart';
import 'package:studentsaving/FirebaseAuthService/firebaseauthservice.dart';
import 'package:studentsaving/Pages/login.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController =  TextEditingController();
  final TextEditingController retypePassController =  TextEditingController();
  final TextEditingController firstNameController =  TextEditingController();
  final TextEditingController lastNameController =  TextEditingController();
  bool validate=false;


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => SystemNavigator.pop(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
            color: ConstantColor.WHITE,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset("assets/logo.png"),
                              ],
                            ),
                          ),
                        ],),
                      const Text(
                        "CREATE AN ACCOUNT",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(
                      children:  [
                        TextField(keyboardType: TextInputType.emailAddress,

                          controller: emailController,
                          style: const TextStyle(color: ConstantColor.WHITE, fontSize: 13),
                          decoration: InputDecoration(

                              contentPadding: const EdgeInsets.only(left: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(40.0),
                              ),focusedBorder: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(40.0),
                          ),
                              fillColor: ConstantColor.DARK_BLUE,
                              filled: true,
                              hintText: "EMAIL*",
                              hintStyle: const TextStyle(color: ConstantColor.WHITE,fontSize: 13)
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          keyboardType: TextInputType.visiblePassword,
                          controller: passwordController,
                          obscureText: true,

                          style: const TextStyle(color: ConstantColor.WHITE, fontSize: 13),

                       decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(left: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(40.0),
                              ),focusedBorder: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(40.0),
                          ),
                              fillColor: ConstantColor.DARK_BLUE,
                              filled: true,
                              hintText: "PASSWORD*",
                              hintStyle: const TextStyle(color: ConstantColor.WHITE, fontSize: 13)
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: retypePassController,
                          obscureText: true,

                          style: const TextStyle(color: ConstantColor.WHITE, fontSize: 13),
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(left: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(40.0),
                              ),focusedBorder: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(40.0),
                          ),
                              fillColor: ConstantColor.DARK_BLUE,
                              filled: true,
                              hintText: "RETYPE PASSWORD*",
                              hintStyle: const TextStyle(color: ConstantColor.WHITE,fontSize: 13)
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: firstNameController,

                          style: const TextStyle(color: ConstantColor.WHITE, fontSize: 13),
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(left: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(40.0),
                              ),focusedBorder: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(40.0),
                          ),
                              fillColor: ConstantColor.DARK_BLUE,
                              filled: true,
                              hintText: "FIRST NAME*",
                              hintStyle: const TextStyle(color: ConstantColor.WHITE,fontSize: 13)
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          controller: lastNameController,

                          style: const TextStyle(color: ConstantColor.WHITE, fontSize: 13),
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(left: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(40.0),
                              ),focusedBorder: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(40.0),
                          ),
                              fillColor: ConstantColor.DARK_BLUE,
                              filled: true,
                              hintText: "LAST NAME*",
                              hintStyle: const TextStyle(color: ConstantColor.WHITE,fontSize: 13)
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextField(
                          style: const TextStyle(color: ConstantColor.WHITE, fontSize: 13),

                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.only(left: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(40.0),
                              ),focusedBorder: OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(40.0),
                          ),
                              fillColor: ConstantColor.DARK_BLUE,
                              filled: true,
                              suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined, color: ConstantColor.WHITE, size: 30,),
                              hintText: "NSCC CAMPUS*",
                              hintStyle: const TextStyle(color: ConstantColor.WHITE,fontSize: 13)
                          ),
                        ),
                        const SizedBox(height: 10),
                        Align(
                          alignment: Alignment.centerRight,
                          child: MaterialButton(
                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                            onPressed: (){
                              if(emailController.text.isEmpty)
                                {
                                  Util.showSnack(context, "Kindly enter email!");
                                }
                              else if(passwordController.text.isEmpty)
                                {
                                  Util.showSnack(context, "Kindly enter password!");
                                }
                              else if(retypePassController.text.isEmpty)
                                {
                                  Util.showSnack(context, "Kindly retype password!");
                                }
                              else if(firstNameController.text.isEmpty)
                                {
                                  Util.showSnack(context, "Kindly enter First name!");
                                }
                              else if(lastNameController.text.isEmpty)
                                {
                                  Util.showSnack(context, "Kindly enter Last name!");
                                }
                              else if(passwordController.text != retypePassController.text )
                                {
                                  Util.showSnack(context, "Passwords Do Not Match!!!");
                                }
                              else if(passwordController.text.length<8 )
                                {
                                  Util.showSnack(context, "Password must contain 8 character.");
                                }
                              else
                                {
                                  context.read<AuthenticationService>().signUp(email: emailController.text.trim(), password: passwordController.text.trim()).then((value) => {
                                    if(value=="weak-password")
                                      {
                                        Util.showSnack(context, "Weak Password!!\nPassword must contain at least one special character, lower & uppercase letter and numbers.")
                                      }
                                    else if( value=="email-already-in-use")
                                      {
                                        Util.showSnack(context, "The account already exists for that email.")
                                      }
                                    else if(value=="something-went-wrong")
                                      {
                                        Util.showSnack(context, "Something Went Wrong!!")
                                      }else if(value=="signed-up")
                                      {
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Login())),
                                        Util.showSnack(context, "Successfully Signed Up!")
                                      }
                                    else
                                      {
                                        Util.showSnack(context, "Something Went Wrong!!")

                                      }
                                  });

                                }


                            },
                            color: ConstantColor.YELLOW,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            child: const Text("SUBMIT"),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const Login()));
                          },
                          child: Container(
                            margin: const EdgeInsets.only(top: 20),
                            alignment: Alignment.centerRight,
                            child: const Text(
                              "Already have an account? Sign in", style: TextStyle(    decoration: TextDecoration.underline,
                                color: Colors.black, fontSize: 13, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),
                        Expanded(
                          child: TextButton(
                            onPressed: (){},
                            child: const Text("BY SUBMITTING THE FOLLOWING INFORMATION YOU AGREE TO THE TERMS AND CONDITIONS AND OUR PRIVACY POLICY.", style: TextStyle(    decoration: TextDecoration.underline,
                                color: Colors.black, fontSize: 11),),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
        ),
      ),
    );
  }


}
