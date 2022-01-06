import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentsaving/Constants/constant_colors.dart';
import 'package:studentsaving/UI/drawer.dart';

class Budget extends StatefulWidget {
  const Budget({Key key}) : super(key: key);

  @override
  _BudgetState createState() => _BudgetState();
}

class _BudgetState extends State<Budget> {

  var height;
  var width;

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
              const Text("BUDGET", style: TextStyle(fontSize: 15, color: Colors.black),),
              SizedBox(height: height*.02,),
              const Text("Select a category and add your monthly expenses, income and savings goals."
                , style: TextStyle(fontSize: 13, color: Colors.black),),
              SizedBox(height: height*.02,),
              const Text("EXPENSES", style: TextStyle(fontSize: 15, color: ConstantColor.DARK_BLUE),),
              SizedBox(height: height*.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  roundedBox(ConstantColor.YELLOW,"assets/budget/income.png", "INCOME"),
                  roundedBox(ConstantColor.GREY,"assets/budget/savings.png", "SAVINGS"),
                ],
              ),
              SizedBox(height: height*.04,),
              const Text("INCOME & SAVINGS", style: TextStyle(fontSize: 15, color: ConstantColor.DARK_BLUE),),
              SizedBox(height: height*.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  roundedBox(ConstantColor.YELLOW,"assets/budget/house.png", "HOUSEHOLD EXPENSES"),
                  roundedBox(ConstantColor.GREY,"assets/budget/health.png", "WEALTH & WELLNESS"),
                ],
              ),
              SizedBox(height: height*.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  roundedBox(ConstantColor.PINK,"assets/budget/groceries.png", "GROCERIES"),
                  roundedBox(ConstantColor.YELLOW,"assets/budget/transit.png", "TRANSIT & AUTO PAYMENTS"),
                ],
              ),

              SizedBox(height: height*.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  roundedBox(ConstantColor.GREY,"assets/budget/entertainment.png", "ENTERTAINMENT"),
                  roundedBox(ConstantColor.PINK,"assets/budget/bank.png", "BANK PAYMENTS"),
                ],
              ),

              SizedBox(height: height*.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  roundedBox(ConstantColor.YELLOW,"assets/budget/subscriptions.png", "SUBSCRIPTIONS"),
                  roundedBox(ConstantColor.GREY,"assets/budget/miscellaneous.png", "MISCELLANEOUS"),
                ],
              ),

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
