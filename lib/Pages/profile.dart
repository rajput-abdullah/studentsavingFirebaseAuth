import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentsaving/Constants/constant_colors.dart';
import 'package:studentsaving/UI/drawer.dart';

class Profile extends StatefulWidget {
  const Profile({Key key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  var height;
  var width;
  int _selectedIndex = 1;
  var lastIndex;

  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset('assets/images/smallIcon.png'),
          iconSize: 25,
        ),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: ConstantColor.DARK_BLUE),
        elevation: 0.0,
      ),
      backgroundColor: Colors.white,
      endDrawer: DrawerScreen(),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              SizedBox(height: height*.02,),
              Center(child: const
              Text("HELLO LUELLA!", style: TextStyle(fontSize: 14, color: Colors.black),)),
              // SizedBox(height: height*.02,),
              // const Text("Learn about how to better manage your money with these resources."
              //   , style: TextStyle(fontSize: 13, color: Colors.black),),
              SizedBox(height: height*.02,),
              // const Text("MANAGING YOUR MONEY", style: TextStyle(fontSize: 15, color: ConstantColor.DARK_BLUE),),
              // SizedBox(height: height*.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  roundedBox(ConstantColor.BLUE,"DOLLARS\nSAVED", ConstantColor.WHITE),
                  roundedBox(ConstantColor.YELLOW,"GOALS\nCOMPLETED", ConstantColor.DARK_BLUE),
                ],
              ),
              SizedBox(height: height*.04,),
              Text("PERSONAL INFORMATION", style: TextStyle(fontSize: 14, color: Colors.black),),
              SizedBox(height: height*.04,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("EMAIL", style: TextStyle(fontSize: 14, color: ConstantColor.DARK_BLUE),),
                  Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text("LUELLA@NSCC.CA", style: TextStyle(fontSize: 14, color:ConstantColor.BLUE),)),
                ],
              ),
              SizedBox(height: height*.04,),
              Text("CHANGE EMAIL", style: TextStyle(fontSize: 14, color: Colors.black),),
              SizedBox(height: height*.005,),

              TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(15.0),
                    ),focusedBorder: OutlineInputBorder(
                  borderRadius:  BorderRadius.circular(15.0),
                ),
                    fillColor: ConstantColor.DARK_BLUE,
                    filled: true,
                    hintText: "TYPE NEW EMAIL*",
                    hintStyle: const TextStyle(color: ConstantColor.PINK,fontSize: 13)
                ),
              ),
              SizedBox(height: height*.04,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("NSCC CAMPUS", style: TextStyle(fontSize: 14, color: ConstantColor.DARK_BLUE),),
                  Container(
                      margin: EdgeInsets.only(left: 8),
                      child: Text("NSCC CAMPUS", style: TextStyle(fontSize: 14, color:ConstantColor.BLUE),)),
                ],
              ),
              SizedBox(height: height*.04,),

              Text("CHANGE PASSWORD", style: TextStyle(fontSize: 14, color: Colors.black),),
              SizedBox(height: height*.005,),

              TextField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(left: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:  BorderRadius.circular(15.0),
                    ),focusedBorder: OutlineInputBorder(
                  borderRadius:  BorderRadius.circular(15.0),
                ),
                    fillColor: ConstantColor.DARK_BLUE,
                    filled: true,
                    hintText: "TYPE NEW PASSWORD*",
                    hintStyle: const TextStyle(color: ConstantColor.PINK,fontSize: 13)
                ),
              ),
              SizedBox(height: height*.03 ,),

              Align(
                alignment: Alignment.centerRight,
                child: MaterialButton(
                  padding: const EdgeInsets.symmetric(horizontal:50, vertical: 12),
                  onPressed: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => Login(),
                    //   ),
                    // );

                  },
                  color: ConstantColor.GREY,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: const Text("SAVE"),
                ),
              ),

              // SizedBox(height: height*.04,),
              // const Text("DEBT AND BORROWING", style: TextStyle(fontSize: 15, color: ConstantColor.DARK_BLUE),),
              // SizedBox(height: height*.02,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     roundedBox(ConstantColor.YELLOW,"assets/budget/income.png", "ARTICLE TITLE"),
              //     roundedBox(ConstantColor.GREY,"assets/budget/income.png", "ARTICLE TITLE"),
              //   ],
              // ),
              // SizedBox(height: height*.02,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     roundedBox(ConstantColor.PINK,"assets/budget/incomeWhite.png", "ARTICLE TITLE"),
              //     roundedBox(ConstantColor.YELLOW,"assets/budget/income.png", "ARTICLE TITLE"),
              //   ],
              // ),
              // SizedBox(height: height*.04,),
              // const Text("SAVINGS AND INVESTMENTS", style: TextStyle(fontSize: 15, color: ConstantColor.DARK_BLUE),),
              // SizedBox(height: height*.02,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     roundedBox(ConstantColor.YELLOW,"assets/budget/income.png", "ARTICLE TITLE"),
              //     roundedBox(ConstantColor.GREY,"assets/budget/income.png", "ARTICLE TITLE"),
              //   ],
              // ),
              // SizedBox(height: height*.04,),
              // const Text("FRAUD AND SCAM PROTECTION", style: TextStyle(fontSize: 15, color: ConstantColor.DARK_BLUE),),
              // SizedBox(height: height*.02,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     roundedBox(ConstantColor.YELLOW,"assets/budget/income.png", "ARTICLE TITLE"),
              //     roundedBox(ConstantColor.GREY,"assets/budget/income.png", "ARTICLE TITLE"),
              //   ],
              // ),
              //
              // SizedBox(height: height*.02,),
              // Container(
              //     margin: const EdgeInsets.only(left: 15),
              //     child: roundedBox(ConstantColor.PINK,"assets/budget/incomeWhite.png", "ARTICLE TITLE")),
              // SizedBox(height: height*.02,),

            ],
          ),
        ),
      ),
    );
  }




  Widget roundedBox(Color dynamicColor, String tabName, Color textColor)
  {
    return Container(
      height: height*0.17,
      width: width*0.4,
      // padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
      decoration: BoxDecoration(
        color: dynamicColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(40)),

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment .center,
        children: [
          Text("\$0",style: TextStyle(color: textColor, fontSize: 22,), textAlign: TextAlign.center,),

          Text(tabName,style: TextStyle(color: textColor, fontSize: 13, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
        ],
      ),
    );

  }
}
