import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentsaving/Constants/constant_colors.dart';
import 'package:studentsaving/UI/drawer.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({Key key}) : super(key: key);

  @override
  _AddTransactionState createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  int _selectedIndex = 3;

  var height;
  var width;


  @override
  Widget build(BuildContext context) {
    height=MediaQuery.of(context).size.height;
    width=MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
        body:
      Container(
        width: width,
        margin: const EdgeInsets.only(top: 15),
        decoration: const BoxDecoration(
          color: ConstantColor.GREY,
          borderRadius: BorderRadius.only(topLeft:Radius.circular(70),topRight:Radius.circular(70))
          ,boxShadow: [
          BoxShadow(
          color: Colors.grey,
          offset: Offset(0.0, 1.0), //(x,y)
          blurRadius: 12.5,
        ),
        ],

      ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
                SizedBox(
                  width: width*.7,
                  height: height*0.11,

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,


                    children: [
                      Container(
                        width: width*0.4,
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey    ,
                              blurRadius: 20,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: TextField(
                          cursorHeight: 30,
                          cursorColor: Colors.black,
                          keyboardAppearance: Brightness.light, // no matter what you set, it simply shows white keyboard

                          style: const TextStyle(fontSize: 20, height: 1.2),
                            keyboardType: TextInputType.number,
                          // textAlign: TextAlign.center,
                          decoration: InputDecoration(
                              // contentPadding: const EdgeInsets.only(right: 5),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20.0),
                                borderSide: const BorderSide(color: Colors.white),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.white),
                                borderRadius:  BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.white),
                                borderRadius:  BorderRadius.circular(20.0),
                              ),
                              fillColor: ConstantColor.WHITE,
                              filled: true,
                              prefixIcon: const Icon(Icons.attach_money_outlined, color: Colors.black, size: 25,),
                              hintStyle: const TextStyle(color: ConstantColor.WHITE,fontSize: 13)
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.topRight,
                          child: Container(
                              margin: const EdgeInsets.only(right: 30, top: 18,),
                              child: const Icon(Icons.close, color: ConstantColor.DARK_BLUE, size: 40,))),

                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () => categoryDialog(),
                child: categoryDateBudget(ConstantColor.PINK,"assets/addTransaction/category.png" , "CATEGORY*")),
            categoryDateBudget(ConstantColor.PINK,"assets/addTransaction/calendar.png" , "DATE*"),
            categoryDateBudget(ConstantColor.PINK,"assets/addTransaction/notes.png" , "NOTE*"),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 70, horizontal: 90),

                child: save(ConstantColor.YELLOW,"SAVE"))
          ],
        ),

      ),
      // bottomNavigationBar: Container(
      //   padding: const EdgeInsets.only(top: 10, bottom: 10),
      //   decoration: const BoxDecoration(
      //     color: ConstantColor.DARK_BLUE,
      //   ),
      //   child:
      //   BottomNavigationBar(
      //
      //     elevation: 0,
      //     backgroundColor: ConstantColor.DARK_BLUE,
      //     type: BottomNavigationBarType.fixed,
      //     selectedItemColor: ConstantColor.YELLOW,
      //     selectedLabelStyle: const TextStyle(fontSize: 10),
      //     unselectedFontSize: 10,
      //     unselectedItemColor: ConstantColor.WHITE,
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //           icon: ImageIcon(AssetImage("assets/images/budgetWhite.png"),
      //           ),
      //           label: 'BUDGET'
      //       ),
      //       BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage("assets/images/resourcesWhite.png"),
      //         ),
      //         label: 'RESOURCES',
      //
      //       ),
      //       BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage("assets/images/goalsWhite.png"),
      //         ),
      //         label: 'GOALS',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage("assets/images/addTransaction.png"),
      //
      //         ),
      //         label: 'ADD TRANSACTION',
      //       ),
      //     ],
      //     currentIndex: _selectedIndex,
      //     onTap: (index){
      //       setState(() {
      //         _selectedIndex = index;
      //       });
      //     },
      //
      //   ),
      // ),

    );

  }


  Future categoryDialog() async{
    await showGeneralDialog(
        context: context,
        barrierDismissible: true,
        barrierLabel: MaterialLocalizations.of(context)
            .modalBarrierDismissLabel,
        barrierColor: Colors.black45,
        transitionDuration: const Duration(milliseconds: 200),
        pageBuilder: (BuildContext buildContext,
            Animation animation,
            Animation secondaryAnimation) {
          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height ,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 15,
                  blurRadius: 20,
                  offset: Offset(7, 7), // changes position of shadow
                ),
              ],
            ),
            margin: EdgeInsets.only(top: 150),
            child: Material(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(        topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:  [
                        Container(
                            margin: EdgeInsets.only(right: 95,),
                            child: Text("Category",style: TextStyle(color: Colors.black, fontSize: 18),)),
                        IconButton(
                          onPressed: () =>Navigator.pop(context),
                          icon:Icon(Icons.close, size: 40,), color: ConstantColor.DARK_BLUE,)

                    ],),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: ConstantColor.DARK_BLUE,
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40 ),
                    padding: EdgeInsets.all(5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),

                          decoration: const BoxDecoration(
                            color: ConstantColor.BLUE,
                            borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          ),
                          child: Text("EXPENSE", style: TextStyle(color: ConstantColor.WHITE, fontSize: 13),),
                        ),Text("INCOME", style: TextStyle(color: ConstantColor.PINK, fontSize: 13),)
                        ,Text("SAVING", style: TextStyle(color: ConstantColor.PINK, fontSize: 13),)

                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () => addNew(),
                        child: Container(
                            margin: EdgeInsets.only(right: 40, top: 20),
                            width: width*0.4,
                            child: save(ConstantColor.YELLOW,"ADD NEW")),
                      ),
                    ],
                  ),
                  SizedBox(height: height*0.025,),
                  Flexible(
                   fit: FlexFit.loose,
                   child: ListView(
                     children: [
                       Container(
                         height: height*0.15,
                         width: width,
                         color: ConstantColor.BLUE.withOpacity(.5),
                         child: Column(
                           children: [
                             SizedBox(height: height*0.01,),
                             Center(child: staticText("HOUSEHOLD EXPENSES")),
                             SizedBox(height: height*0.02,),
                             Container(
                               margin: EdgeInsets.symmetric(horizontal: 20),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                 children: [
                                   circleWidget("RENT"),
                                   circleWidget("POWER"),
                                   circleWidget("WATER"),
                                   circleWidget("INTERNET"),
                                 ],
                               ),
                             ),
                           ],
                         ),
                       ),
                       SizedBox(height: height*0.01,),
                       Container(
                         height: height*0.15,
                         width: width,
                         color: ConstantColor.PINK.withOpacity(.5),
                         child: Column(
                           children: [
                             SizedBox(height: height*0.01,),
                             Center(child: staticText("TRANSIT OR AUTO PAYMENTS")),
                             SizedBox(height: height*0.02,),
                             Container(
                               margin: EdgeInsets.symmetric(horizontal: 20),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Container(
                                       margin: EdgeInsets.only(left: 15),

                                       child: circleWidget("CAR PAYMENT")),
                                   Container(
                                       margin: EdgeInsets.only(left: 30),
                                       child: circleWidget("GAS")),

                                 ],
                               ),
                             ),




                           ],
                         ),
                       ),
                       SizedBox(height: height*0.01,),
                       Container (
                         height: height*0.15,
                         width: width,
                         color: ConstantColor.YELLOW.withOpacity(.5),
                         child: Column(
                           children: [
                             SizedBox(height: height*0.01,),
                             Center(child: staticText("GROCERIES")),
                             SizedBox(height: height*0.02,),
                             Container(
                               margin: EdgeInsets.symmetric(horizontal: 20),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Container(
                                       margin: EdgeInsets.only(left: 15),

                                       child: circleWidget("GROCERIES")),
                                   Container(
                                       margin: EdgeInsets.only(left: 30),
                                       child: circleWidget("SNACKS")),

                                 ],
                               ),
                             ),




                           ],
                         ),
                       ),
                       SizedBox(height: height*0.01,),
                       Container (
                         height: height*0.15,
                         width: width,
                         color: ConstantColor.BLUE.withOpacity(.5),
                         child: Column(
                           children: [
                             SizedBox(height: height*0.01,),
                             Center(child: staticText("HEALTH & WELLNESS")),
                             SizedBox(height: height*0.02,),
                             Container(
                               margin: EdgeInsets.symmetric(horizontal: 20),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Container(
                                       margin: EdgeInsets.only(left: 15),

                                       child: circleWidget("GYM")),
                                   Container(
                                       margin: EdgeInsets.only(left: 30),
                                       child: circleWidget("MEDICINE")),

                                 ],
                               ),
                             ),




                           ],
                         ),
                       ),
                       SizedBox(height: height*0.01,),
                       Container (
                         height: height*0.15,
                         width: width,
                         color: ConstantColor.PINK.withOpacity(.5),
                         child: Column(
                           children: [
                             SizedBox(height: height*0.01,),
                             Center(child: staticText("BANK PAYMENTS")),
                             SizedBox(height: height*0.02,),
                             Container(
                               margin: EdgeInsets.symmetric(horizontal: 20),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Container(
                                       margin: EdgeInsets.only(left: 15),

                                       child: circleWidget("MONTHLY PAYMENT")),
                                   Container(
                                       margin: EdgeInsets.only(left: 30),
                                       child: circleWidget("CREDIT CARD")),

                                 ],
                               ),
                             ),




                           ],
                         ),
                       ),
                       SizedBox(height: height*0.01,),
                       Container (
                         height: height*0.15,
                         width: width,
                         color: ConstantColor.YELLOW.withOpacity(.5),
                         child: Column(
                           children: [
                             SizedBox(height: height*0.01,),
                             Center(child: staticText("ENTERTAINMENT")),
                             SizedBox(height: height*0.02,),
                             Container(
                               margin: EdgeInsets.symmetric(horizontal: 20),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Container(
                                       margin: EdgeInsets.only(left: 15),

                                       child: circleWidget("DATE NIGHT")),
                                   Container(
                                       margin: EdgeInsets.only(left: 30),
                                       child: circleWidget("SHOPPING")),

                                 ],
                               ),
                             ),




                           ],
                         ),
                       ),
                       SizedBox(height: height*0.01,),
                       Container (
                         height: height*0.15,
                         width: width,
                         color: ConstantColor.BLUE.withOpacity(.5),
                         child: Column(
                           children: [
                             SizedBox(height: height*0.01,),
                             Center(child: staticText("SUBSCRIPTIONS")),
                             SizedBox(height: height*0.02,),
                             Container(
                               margin: EdgeInsets.symmetric(horizontal: 20),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Container(
                                       margin: EdgeInsets.only(left: 15),

                                       child: circleWidget("NETFLIX")),

                                 ],
                               ),
                             ),




                           ],
                         ),
                       ), SizedBox(height: height*0.01,),
                       Container (
                         height: height*0.15,
                         width: width,
                         color: ConstantColor.PINK.withOpacity(.5),
                         child: Column(
                           children: [
                             SizedBox(height: height*0.01,),
                             Center(child: staticText("MISCELLANEOUS")),
                             SizedBox(height: height*0.02,),
                             Container(
                               margin: EdgeInsets.symmetric(horizontal: 20),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Container(
                                       margin: EdgeInsets.only(left: 15),

                                       child: circleWidget("BIRTHDAY")),

                                 ],
                               ),
                             ),




                           ],
                         ),
                       ),
                       SizedBox(height: height*0.02,),

                     ],
                   ),
                 )

                ],
              ),
            ),
          );
        });
  }


  Future addNew() async
  {
    await showDialog<void>(
      barrierDismissible: true,
      // useSafeArea: true,
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,

          insetPadding:EdgeInsets.symmetric(horizontal: 0, vertical: 0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child:Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.35,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.0),
                  topRight: Radius.circular(50.0),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 5,
                    blurRadius: 20,
                    offset: Offset(7, 7), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:  [
                        Container(
                            margin: EdgeInsets.only(right: 15, top: 10),
                            child: Text("ADD NEW PAYMENT TYPE",style: TextStyle(color: Colors.black, fontSize: 18),)),
                        IconButton(
                          onPressed: () =>Navigator.pop(context),
                          icon:Icon(Icons.close, size: 40,), color: ConstantColor.DARK_BLUE,)

                      ],),


                  ),
                  SizedBox(height:height*0.02),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 10),
                          TextField(                            style: TextStyle(color: Colors.white),


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
                                hintText: "NAME OF PAYMENT*",
                                hintStyle: const TextStyle(color: ConstantColor.PINK,fontSize: 13)
                            ),
                          ),
                          const SizedBox(height: 10),
                          TextField(
                            style: TextStyle(color: Colors.white),

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
                                hintText: "CATEGORY TYPE",
                                hintStyle: const TextStyle(color: ConstantColor.PINK,fontSize: 13)
                            ),
                          ),
                          const SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerRight,
                            child: MaterialButton(
                              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                              onPressed: (){
                                Navigator.pop(
                                    context
                                );

                              },
                              color: ConstantColor.YELLOW,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              child: const Text("SUBMIT"),
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      )
                  )

                ],
              ),
            ),
          ),
        );
      },
    );
  }
  // Future addNew() async{
  //   await showGeneralDialog(
  //       context: context,
  //       barrierDismissible: true,
  //       barrierLabel: MaterialLocalizations.of(context)
  //           .modalBarrierDismissLabel,
  //       barrierColor: Colors.black45,
  //       transitionDuration: const Duration(milliseconds: 200),
  //       pageBuilder: (BuildContext buildContext,
  //           Animation animation,
  //           Animation secondaryAnimation) {
  //         return Container(
  //           width: MediaQuery.of(context).size.width,
  //           height: MediaQuery.of(context).size.height ,
  //           decoration: const BoxDecoration(
  //             color: Colors.white,
  //             borderRadius: BorderRadius.only(
  //               topLeft: Radius.circular(50.0),
  //               topRight: Radius.circular(50.0),
  //             ),
  //             boxShadow: [
  //               BoxShadow(
  //                 color: Colors.grey,
  //                 spreadRadius: 5,
  //                 blurRadius: 20,
  //                 offset: Offset(7, 7), // changes position of shadow
  //               ),
  //             ],
  //           ),
  //           margin: EdgeInsets.only(top: 420),
  //           child: Material(
  //             shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.only(        topLeft: Radius.circular(50.0),
  //                   topRight: Radius.circular(50.0),)),
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.start,
  //
  //               children: [
  //                 Container(
  //                   margin: EdgeInsets.only(top: 20, right: 30),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.end,
  //                     children:  [
  //                       Container(
  //                           margin: EdgeInsets.only(right: 15, top: 20),
  //                           child: Text("ADD NEW PAYMENT TYPE",style: TextStyle(color: Colors.black, fontSize: 18),)),
  //                       IconButton(
  //                         onPressed: () =>Navigator.pop(context),
  //                         icon:Icon(Icons.close, size: 40,), color: ConstantColor.DARK_BLUE,)
  //
  //                     ],),
  //
  //
  //                 ),
  //                 SizedBox(height:height*0.05),
  //                 Container(
  //                  margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
  //                  child:
  //                    Column(
  //                      mainAxisAlignment: MainAxisAlignment.center,
  //                      children: [
  //                        const SizedBox(height: 10),
  //                        TextField(
  //                          decoration: InputDecoration(
  //                              contentPadding: const EdgeInsets.only(left: 20),
  //                              border: OutlineInputBorder(
  //                                borderRadius: BorderRadius.circular(40.0),
  //                              ),
  //                              enabledBorder: OutlineInputBorder(
  //                                borderRadius:  BorderRadius.circular(40.0),
  //                              ),focusedBorder: OutlineInputBorder(
  //                            borderRadius:  BorderRadius.circular(40.0),
  //                          ),
  //                              fillColor: ConstantColor.DARK_BLUE,
  //                              filled: true,
  //                              hintText: "NAME OF PAYMENT*",
  //                              hintStyle: const TextStyle(color: ConstantColor.PINK,fontSize: 13)
  //                          ),
  //                        ),
  //                        const SizedBox(height: 10),
  //                        TextField(
  //                          decoration: InputDecoration(
  //                              contentPadding: const EdgeInsets.only(left: 20),
  //                              border: OutlineInputBorder(
  //                                borderRadius: BorderRadius.circular(40.0),
  //                              ),
  //                              enabledBorder: OutlineInputBorder(
  //                                borderRadius:  BorderRadius.circular(40.0),
  //                              ),focusedBorder: OutlineInputBorder(
  //                            borderRadius:  BorderRadius.circular(40.0),
  //                          ),
  //                              fillColor: ConstantColor.DARK_BLUE,
  //                              filled: true,
  //                              suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined, color: ConstantColor.WHITE, size: 30,),
  //                              hintText: "CATEGORY TYPE",
  //                              hintStyle: const TextStyle(color: ConstantColor.PINK,fontSize: 13)
  //                          ),
  //                        ),
  //                        const SizedBox(height: 10),
  //                        Align(
  //                          alignment: Alignment.centerRight,
  //                          child: MaterialButton(
  //                            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
  //                            onPressed: (){
  //                              Navigator.pop(
  //                                  context
  //                              );
  //
  //                            },
  //                            color: ConstantColor.YELLOW,
  //                            shape: RoundedRectangleBorder(
  //                                borderRadius: BorderRadius.circular(30)),
  //                            child: const Text("SUBMIT"),
  //                          ),
  //                        ),
  //                        const SizedBox(height: 20),
  //                      ],
  //                    )
  //                )
  //
  //               ],
  //             ),
  //           ),
  //         );
  //       });
  // }

  Widget staticText(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 14,
          color: ConstantColor.DARK_BLUE,
          fontWeight: FontWeight.bold),
    );
  }



  Widget categoryDateBudget(Color dynamicColor, String imgPath, String tabName)
  {
    return Container(
      height: height*0.09,
      padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
      margin: const EdgeInsets.only(top: 20, left: 50, right: 50),
      decoration: BoxDecoration(
        color: dynamicColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(20)),

      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 20),

                  child: Image.asset(imgPath)),
              Container(
                margin: const EdgeInsets.only(left: 30),
                child:  Center(child: Text(tabName,style: const TextStyle(color: ConstantColor.WHITE, fontSize: 14, fontWeight: FontWeight.bold),))
                ,
              ),

            ],
          ),
        ],
      ),
    );

  }
  Widget save(Color dynamicColor,String tabName)
  {
    return Container(
      height: height*0.04,
      decoration: BoxDecoration(
        color: dynamicColor,
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: 6.0,
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(20)),

      ),
      child: Center(child: Text(tabName,style: const TextStyle(color:Colors.black, fontSize: 14, fontWeight: FontWeight.bold),)),

    );

  }
  Widget circleWidget(String text)
  {
    return Container(
      height: height*0.07,
      width: height*0.07,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
        color: ConstantColor.GREY,
        borderRadius: BorderRadius.all(Radius.circular(50)),

      ),
      child: Center(
        child: Text(text, style: TextStyle(
            fontSize: 10,
            color: ConstantColor.DARK_BLUE
        ),textAlign: TextAlign.center,

        ),
      ),


    );
  }
}
