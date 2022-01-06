import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentsaving/Constants/constant_colors.dart';
import 'package:studentsaving/UI/drawer.dart';
import 'package:studentsaving/UI/nav_bar.dart';

import 'add_transaction.dart';
import 'goals.dart';
import 'home_screen.dart';

class Resources extends StatefulWidget {
  const Resources({Key key}) : super(key: key);

  @override
  _ResourcesState createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
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
              const Text("RESOURCES", style: TextStyle(fontSize: 15, color: Colors.black),),
              SizedBox(height: height*.02,),
              const Text("Learn about how to better manage your money with these resources."
                , style: TextStyle(fontSize: 13, color: Colors.black),),
              SizedBox(height: height*.02,),
              const Text("MANAGING YOUR MONEY", style: TextStyle(fontSize: 15, color: ConstantColor.DARK_BLUE),),
              SizedBox(height: height*.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  roundedBox(ConstantColor.YELLOW,"assets/budget/income.png", "ARTICLE TITLE"),
                  roundedBox(ConstantColor.GREY,"assets/budget/incomeBlue.png", "ARTICLE TITLE"),
                ],
              ),
              SizedBox(height: height*.04,),
              const Text("DEBT AND BORROWING", style: TextStyle(fontSize: 15, color: ConstantColor.DARK_BLUE),),
              SizedBox(height: height*.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  roundedBox(ConstantColor.YELLOW,"assets/budget/income.png", "ARTICLE TITLE"),
                  roundedBox(ConstantColor.GREY,"assets/budget/income.png", "ARTICLE TITLE"),
                ],
              ),
              SizedBox(height: height*.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  roundedBox(ConstantColor.PINK,"assets/budget/incomeWhite.png", "ARTICLE TITLE"),
                  roundedBox(ConstantColor.YELLOW,"assets/budget/income.png", "ARTICLE TITLE"),
                ],
              ),

              SizedBox(height: height*.04,),
              const Text("SAVINGS AND INVESTMENTS", style: TextStyle(fontSize: 15, color: ConstantColor.DARK_BLUE),),
              SizedBox(height: height*.02,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  roundedBox(ConstantColor.YELLOW,"assets/budget/income.png", "ARTICLE TITLE"),
                  roundedBox(ConstantColor.GREY,"assets/budget/income.png", "ARTICLE TITLE"),
                ],
              ),

              SizedBox(height: height*.04,),
              const Text("FRAUD AND SCAM PROTECTION", style: TextStyle(fontSize: 15, color: ConstantColor.DARK_BLUE),),
              SizedBox(height: height*.02,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  roundedBox(ConstantColor.YELLOW,"assets/budget/income.png", "ARTICLE TITLE"),
                  roundedBox(ConstantColor.GREY,"assets/budget/income.png", "ARTICLE TITLE"),
                ],
              ),

              SizedBox(height: height*.02,),
              Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: roundedBox(ConstantColor.PINK,"assets/budget/incomeWhite.png", "ARTICLE TITLE")),
              SizedBox(height: height*.02,),

            ],
          ),
        ),
      ),
    );
  }




  Widget roundedBox(Color dynamicColor, String imgPath, String tabName)
  {
    return Container(
      height: height*0.17,
      width: width*0.4,
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(imgPath)
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.height*.017,),
          Expanded(
            child:  Align(
                alignment: Alignment.topLeft,
                child: Text(tabName,style: const TextStyle(color: ConstantColor.DARK_BLUE, fontSize: 14, fontWeight: FontWeight.bold),))
            ,
          ),
        ],
      ),
    );

  }
}
