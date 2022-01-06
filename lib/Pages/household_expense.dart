import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentsaving/Constants/constant_colors.dart';
import 'package:studentsaving/UI/drawer.dart';

class HouseHoldExpense extends StatefulWidget {
  const HouseHoldExpense({Key key}) : super(key: key);

  @override
  _HouseHoldExpenseState createState() => _HouseHoldExpenseState();
}

class _HouseHoldExpenseState extends State<HouseHoldExpense> {
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
      endDrawer: const DrawerScreen(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 35),

        height: double.maxFinite,
        width: double.maxFinite,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset("assets/budget/house.png"),
                      ],
                    ),
                    SizedBox(height: height*.01,),
                    const Text("HOUSEHOLD EXPENSES", style:   TextStyle(color: Colors.black, fontSize: 18),)
                  ],
                ),
              ),
              const Align(
                  alignment: Alignment.centerRight,
                  child:
                  Text("ENTER AMOUNT", style: TextStyle(color: ConstantColor.DARK_BLUE, fontSize: 10),)),
              SizedBox(height: width*.02,),
              expenseTypes("RENT"),
              const Divider(thickness: 1,),
              expenseTypes("MORTAGE"),
              const Divider(thickness: 1,),
              expenseTypes("POWER"),
              const Divider(thickness: 1,),

              expenseTypes("WATER"),
              const Divider(thickness: 1,),

             expenseTypes("INTERNET"),
              const Divider(thickness: 1,),

              expenseTypes("TELEPHONE"),
              const Divider(thickness: 1,),
              SizedBox(height: width*.02,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    minWidth: width*0.4,

                    // padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                    onPressed: (){},
                    color: ConstantColor.GREY,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text("ADD NEW EXPENSE", style: TextStyle(fontSize: 10, color: ConstantColor.DARK_BLUE),),
                  ),
                  MaterialButton(
                          minWidth: width*0.4,
                    // padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                    onPressed: (){},
                    color: ConstantColor.GREY,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text("SAVE", style: TextStyle(fontSize: 10, color: ConstantColor.DARK_BLUE)),
                  ),
                ],
              )


            ],
          ),
        ),
      ),
    );
  }
  Widget expenseTypes(String name)
  {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Expanded(
            flex: 1,
            child: Text(name, style: const TextStyle(color: ConstantColor.DARK_BLUE, fontSize: 16),)),
        Expanded(
          flex: 1,
          child: TextField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius:  BorderRadius.circular(18.0),
                ),focusedBorder: OutlineInputBorder(
              borderRadius:  BorderRadius.circular(18.0),
            ),
                fillColor: ConstantColor.DARK_BLUE,
                filled: true,
                prefixIcon: const Icon(Icons.attach_money_outlined, color: ConstantColor.PINK, size: 18,),
                hintStyle: const TextStyle(color: ConstantColor.WHITE,fontSize: 13)
            ),
          ),
        ),


      ],
    );
  }
}
