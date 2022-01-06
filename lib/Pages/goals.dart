import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:studentsaving/Constants/constant_colors.dart';
import 'package:studentsaving/UI/drawer.dart';

class Goals extends StatefulWidget {
  const Goals({Key key}) : super(key: key);

  @override
  _GoalsState createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
  var height;
  var width;
  Dialog dlg;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }


  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
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
        height: double.maxFinite,
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: height * .01,
              ),
              const Text(
                "GOALS",
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              SizedBox(
                height: height * .01,
              ),
              const Text(
                "Set financial goals for yourself, and track your progress.",
                style: TextStyle(fontSize: 13, color: Colors.black),
              ),
              SizedBox(
                height: height * .01,
              ),
              const Text(
                "ADD OR UPDATE GOALS",
                style: TextStyle(fontSize: 15, color: ConstantColor.DARK_BLUE),
              ),
              SizedBox(
                height: height * .01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () => addGoal(),
                    child: roundedBox(ConstantColor.YELLOW, "assets/goals/addGoal.png",
                        "ADD GOAL"),
                  ),
                  GestureDetector(
                    onTap: ()
                    {
                      trackGoalProgress();
                    },
                    child: roundedBox(
                        ConstantColor.GREY,
                        "assets/goals/trackGoalProgress.png",
                        "TRACK GOAL PROGRESS"),
                  ),
                ],
              ),
              SizedBox(
                height: height * .02,
              ),
              const Text(
                "MY GOALS",
                style: TextStyle(fontSize: 15, color: ConstantColor.DARK_BLUE),
              ),
              Container(
                margin:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                height: height * 0.28,
                decoration: const BoxDecoration(
                  color: ConstantColor.LIGHT_BLUE,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin:
                      const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              staticText("OCTOBER 1,2021"),
                              staticText("MAY 41,2022"),
                            ],
                          ),
                          Container(

                            padding: const EdgeInsets.all(1),
                            height: height * 0.029,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: ConstantColor.PINK,
                                )),
                            child: const ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              child: LinearProgressIndicator(
                                  value: 0.5,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                      ConstantColor.PINK),
                                  backgroundColor: Colors.white,
                                  minHeight: 15),
                            ),
                          ),

                        ],
                      ),
                    ),

                    Container(
                      margin:
                      const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          staticText("GOAL TITLE"),
                          dynamicText("Pay off my credit card"),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                      const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          staticText("ACTION PLAN"),
                          dynamicText("Additional monthly payments of \$50"),
                        ],
                      ),
                    ),
                    Container(
                      margin:
                      const EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          staticText("AMOUNT NEEDED TO COMPLETE GOAL"),
                          dynamicText("\$758.48"),
                        ],
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: Container(
      //   padding: const EdgeInsets.only(top: 10, bottom: 10),
      //   decoration: const BoxDecoration(
      //     color: ConstantColor.DARK_BLUE,
      //   ),
      //   child: BottomNavigationBar(
      //     elevation: 0,
      //     backgroundColor: ConstantColor.DARK_BLUE,
      //     type: BottomNavigationBarType.fixed,
      //     selectedItemColor: ConstantColor.YELLOW,
      //     selectedLabelStyle: const TextStyle(fontSize: 10),
      //     unselectedFontSize: 10,
      //     unselectedItemColor: ConstantColor.WHITE,
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //           icon: ImageIcon(
      //             AssetImage("assets/images/budgetWhite.png"),
      //           ),
      //           label: 'BUDGET'),
      //       BottomNavigationBarItem(
      //         icon: ImageIcon(
      //           AssetImage("assets/images/resourcesWhite.png"),
      //         ),
      //         label: 'RESOURCES',
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
      //         ),
      //         label: 'ADD TRANSACTION',
      //       ),
      //     ],
      //     currentIndex: _selectedIndex,
      //     onTap: (index) {
      //       setState(() {
      //         _selectedIndex = index;
      //       });
      //     },
      //   ),
      // ),
    );
    // return Scaffold(
    //   appBar: AppBar(
    //     leading: IconButton(
    //       onPressed: () {},
    //       icon: Image.asset('assets/images/smallIcon.png'),
    //       iconSize: 25,
    //     ),
    //     backgroundColor: Colors.white,
    //     iconTheme: const IconThemeData(color: ConstantColor.DARK_BLUE),
    //     elevation: 0.0,
    //   ),
    //   backgroundColor: Colors.white,
    //   endDrawer: const DrawerScreen(),
    //   body: Container(
    //     height: double.maxFinite,
    //     margin: const EdgeInsets.symmetric(horizontal: 20),
    //     child: Column(
    //       mainAxisSize: MainAxisSize.max,
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Expanded(
    //           flex: 1,
    //           child:  Align(
    //             alignment: Alignment.centerLeft,
    //
    //             child: Text(
    //               "GOALS",
    //               style: TextStyle(fontSize: 15, color: Colors.black),
    //             ),
    //           ),
    //         ),
    //         Expanded(
    //           flex: 1,
    //
    //           child: Align(
    //             alignment: Alignment.topLeft,
    //
    //             child: Text(
    //               "Set financial goals for yourself, and track your progress.",
    //               style: TextStyle(fontSize: 13, color: Colors.black),
    //         ),
    //           ),
    //          ),
    //         Expanded(
    //           flex: 1,
    //
    //           child: Align(
    //             alignment: Alignment.centerLeft,
    //
    //             child: Text(
    //               "ADD OR UPDATE GOALS",
    //               style: TextStyle(fontSize: 15, color: ConstantColor.DARK_BLUE),
    //         ),
    //           ),
    //          ),
    //         Expanded(
    //           flex: 2,
    //           child: Align(
    //             alignment: Alignment.topLeft,
    //
    //             child: Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceAround,
    //               children: [
    //                 GestureDetector(
    //                   onTap: () => addGoalBottom(),
    //                   child: roundedBox(ConstantColor.YELLOW, "assets/goals/addGoal.png",
    //                       "ADD GOAL"),
    //                 ),
    //                 GestureDetector(
    //                   onTap: () =>trackGoalProgress(),
    //                   child: roundedBox(
    //                       ConstantColor.GREY,
    //                       "assets/goals/trackGoalProgress.png",
    //                       "TRACK GOAL PROGRESS"),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),
    //         Expanded(
    //           flex: 1,
    //
    //           child: Align(
    //             alignment: Alignment.centerLeft,
    //
    //             child: Text(
    //               "MY GOALS",
    //               style: TextStyle(fontSize: 15, color: ConstantColor.DARK_BLUE),
    //         ),
    //           ),
    //          ),
    //         Expanded(
    //           flex: 4,
    //
    //           child: Align(
    //             alignment: Alignment.topLeft,
    //
    //             child: Container(
    //               margin:
    //                   const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    //               decoration: const BoxDecoration(
    //                 color: ConstantColor.LIGHT_BLUE,
    //                 borderRadius: BorderRadius.all(Radius.circular(30)),
    //               ),
    //               child: Column(
    //                 crossAxisAlignment: CrossAxisAlignment.start,
    //                 mainAxisAlignment: MainAxisAlignment.start,
    //                 children: [
    //                   Expanded(
    //                     flex:1,
    //                    child: Column(
    //                      children: [
    //                        Expanded(
    //
    //                          child: Align(
    //                            alignment: Alignment.center,
    //                            child: Container(
    //                              margin:
    //                              const EdgeInsets.only(left: 20, right: 20),
    //                              child: Row(
    //                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                                children: [
    //                                  staticText("OCTOBER 1,2021"),
    //                                  staticText("MAY 41,2022"),
    //                                ],
    //                              ),
    //                            ),
    //                          ),
    //                        ),
    //                        Expanded(
    //                          child: Align(
    //                            alignment: Alignment.topCenter,
    //                            child: Container(
    //                              margin:
    //                              const EdgeInsets.only( right: 20, left: 20),
    //                              padding: const EdgeInsets.all(1),
    //                              height: height * 0.029,
    //                              decoration: BoxDecoration(
    //                                  color: Colors.white,
    //                                  borderRadius: BorderRadius.circular(15),
    //                                  border: Border.all(
    //                                    color: ConstantColor.PINK,
    //                                  )),
    //                              child: const ClipRRect(
    //                                borderRadius: BorderRadius.all(
    //                                  Radius.circular(10),
    //                                ),
    //                                child: LinearProgressIndicator(
    //                                    value: 0.5,
    //                                    valueColor: AlwaysStoppedAnimation<Color>(
    //                                        ConstantColor.PINK),
    //                                    backgroundColor: Colors.white,
    //                                    minHeight: 15),
    //                              ),
    //                            ),
    //                          ),
    //                        ),
    //                      ],
    //                    ),
    //                  ),
    //                   Expanded(
    //                     flex:1,
    //
    //                     child: Align(
    //                       alignment: Alignment.bottomLeft,
    //                       child: Container(
    //                         margin:
    //                             const EdgeInsets.only(left: 20, right: 20),
    //                         child: Column(
    //                           mainAxisAlignment: MainAxisAlignment.start,
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: [
    //                             staticText("GOAL TITLE"),
    //                             dynamicText("Pay off my credit card"),
    //                           ],
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                   Expanded(
    //                     flex:1,
    //
    //                     child: Align(
    //                       alignment: Alignment.bottomLeft,
    //                       child: Container(
    //                         margin:
    //                             const EdgeInsets.only(left: 20, right: 20),
    //                         child: Column(
    //                           mainAxisAlignment: MainAxisAlignment.start,
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: [
    //                             staticText("ACTION PLAN"),
    //                             dynamicText("Additional monthly payments of \$50"),
    //                           ],
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                   Expanded(
    //                     flex:1,
    //
    //                     child: Align(
    //                       alignment: Alignment.bottomLeft,
    //
    //                       child: Container(
    //                         margin:
    //                             const EdgeInsets.only(left: 20, right: 20),
    //                         child: Column(
    //                           mainAxisAlignment: MainAxisAlignment.start,
    //                           crossAxisAlignment: CrossAxisAlignment.start,
    //                           children: [
    //                             staticText("AMOUNT NEEDED TO COMPLETE GOAL"),
    //                             dynamicText("\$758.48"),
    //                           ],
    //                         ),
    //                       ),
    //                     ),
    //                   ),
    //                 ],
    //               ),
    //             ),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }

  Widget roundedBox(Color dynamicColor, String imgPath, String tabName) {
    return Container(
      height: height * 0.17,
      width: width * 0.4,
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
            children: [Image.asset(imgPath)],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .017,
          ),
          Expanded(
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  tabName,
                  style: const TextStyle(
                      color: ConstantColor.DARK_BLUE,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }

  Widget staticText(String text) {
    return Text(
      text,
      style: const TextStyle(
          fontSize: 11,
          color: ConstantColor.DARK_BLUE,
          fontWeight: FontWeight.bold),
    );
  }

  Widget dynamicText(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 15, color: ConstantColor.WHITE),
    );
  }


  // Future addGoal() async{
  //
  //    dlg = await showGeneralDialog(
  //       context: context,
  //       barrierDismissible: true,
  //
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
  //           margin: EdgeInsets.only(top: 300),
  //           child: Material(
  //             shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.only(        topLeft: Radius.circular(50.0),
  //                   topRight: Radius.circular(50.0),)),
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.start,
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
  //                 SizedBox(height:height*0.01),
  //                 Container(
  //                     margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
  //                     child:
  //                     Column(
  //                       mainAxisAlignment: MainAxisAlignment.center,
  //                       children: [
  //                         const SizedBox(height: 10),
  //                         TextField(
  //                           decoration: InputDecoration(
  //                               contentPadding: const EdgeInsets.only(left: 20),
  //                               border: OutlineInputBorder(
  //                                 borderRadius: BorderRadius.circular(40.0),
  //                               ),
  //                               enabledBorder: OutlineInputBorder(
  //                                 borderRadius:  BorderRadius.circular(40.0),
  //                               ),focusedBorder: OutlineInputBorder(
  //                             borderRadius:  BorderRadius.circular(40.0),
  //                           ),
  //                               fillColor: ConstantColor.DARK_BLUE,
  //                               filled: true,
  //                               suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined, color: ConstantColor.PINK, size: 30,),
  //                               hintText: "GOAL NAME*",
  //                               hintStyle: const TextStyle(color: ConstantColor.PINK,fontSize: 13)
  //                           ),
  //                         ),
  //                         const SizedBox(height: 10),
  //                         TextField(
  //                           decoration: InputDecoration(
  //                               contentPadding: const EdgeInsets.only(left: 20),
  //                               border: OutlineInputBorder(
  //                                 borderRadius: BorderRadius.circular(40.0),
  //                               ),
  //                               enabledBorder: OutlineInputBorder(
  //                                 borderRadius:  BorderRadius.circular(40.0),
  //                               ),focusedBorder: OutlineInputBorder(
  //                             borderRadius:  BorderRadius.circular(40.0),
  //                           ),
  //                               fillColor: ConstantColor.DARK_BLUE,
  //                               filled: true,
  //                               hintText: "ACTION PLAN*",
  //                               hintStyle: const TextStyle(color: ConstantColor.PINK,fontSize: 13)
  //                           ),
  //                         ),
  //                         const SizedBox(height: 10),
  //                         TextField(
  //                           decoration: InputDecoration(
  //                               contentPadding: const EdgeInsets.only(left: 20),
  //                               border: OutlineInputBorder(
  //                                 borderRadius: BorderRadius.circular(40.0),
  //                               ),
  //                               enabledBorder: OutlineInputBorder(
  //                                 borderRadius:  BorderRadius.circular(40.0),
  //                               ),focusedBorder: OutlineInputBorder(
  //                             borderRadius:  BorderRadius.circular(40.0),
  //                           ),
  //                               fillColor: ConstantColor.DARK_BLUE,
  //                               filled: true,
  //                               hintText: "AMOUNT NEEDED TO COMPLETE GOAL*",
  //                               hintStyle: const TextStyle(color: ConstantColor.PINK,fontSize: 13)
  //                           ),
  //                         ),
  //                         const SizedBox(height: 10),
  //                         TextField(
  //                           decoration: InputDecoration(
  //                               contentPadding: const EdgeInsets.only(left: 20),
  //                               border: OutlineInputBorder(
  //                                 borderRadius: BorderRadius.circular(40.0),
  //                               ),
  //                               enabledBorder: OutlineInputBorder(
  //                                 borderRadius:  BorderRadius.circular(40.0),
  //                               ),focusedBorder: OutlineInputBorder(
  //                             borderRadius:  BorderRadius.circular(40.0),
  //                           ),
  //                               fillColor: ConstantColor.DARK_BLUE,
  //                               filled: true,
  //                               suffixIcon: const Icon(Icons.calendar_today_outlined, color: ConstantColor.PINK, size: 25,),
  //                               hintText: "START DATE*",
  //                               hintStyle: const TextStyle(color: ConstantColor.PINK,fontSize: 13)
  //                           ),
  //                         ),
  //
  //                         const SizedBox(height: 10),
  //                         TextField(
  //                           decoration: InputDecoration(
  //                               contentPadding: const EdgeInsets.only(left: 20),
  //                               border: OutlineInputBorder(
  //                                 borderRadius: BorderRadius.circular(40.0),
  //                               ),
  //                               enabledBorder: OutlineInputBorder(
  //                                 borderRadius:  BorderRadius.circular(40.0),
  //                               ),focusedBorder: OutlineInputBorder(
  //                             borderRadius:  BorderRadius.circular(40.0),
  //                           ),
  //                               fillColor: ConstantColor.DARK_BLUE,
  //                               filled: true,
  //                               suffixIcon: const Icon(Icons.calendar_today_outlined, color: ConstantColor.PINK, size: 25,),
  //                               hintText: "TARGET DATE OF COMPLETION",
  //                               hintStyle: const TextStyle(color: ConstantColor.PINK,fontSize: 13)
  //                           ),
  //                         ),
  //
  //
  //                         const SizedBox(height: 10),
  //                         Align(
  //                           alignment: Alignment.centerRight,
  //                           child: MaterialButton(
  //                             padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
  //                             onPressed: (){
  //                               Navigator.pop(
  //                                   context
  //                               );
  //
  //                             },
  //                             color: ConstantColor.YELLOW,
  //                             shape: RoundedRectangleBorder(
  //                                 borderRadius: BorderRadius.circular(30)),
  //                             child: const Text("SUBMIT"),
  //                           ),
  //                         ),
  //                         const SizedBox(height: 20),
  //                       ],
  //                     )
  //                 )
  //
  //               ],
  //             ),
  //           ),
  //         );
  //       });
  // }

    Future trackGoalProgress() async
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
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,

                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children:  [
                        Container(
                            margin: EdgeInsets.only(right: 60, top: 20),
                            child: Text("TRACK GOAL",style: TextStyle(color: Colors.black, fontSize: 18),)),
                        IconButton(
                          onPressed: () =>Navigator.pop(context),
                          icon:Icon(Icons.close, size: 40,), color: ConstantColor.DARK_BLUE,)

                      ],),


                  ),
                  SizedBox(height:height*0.01),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                      child:
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
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
                                suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined, color: ConstantColor.PINK, size: 30,),
                                hintText: "GOAL NAME*",
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
                                hintText: "AMOUNT TRACKED TOWARD GOAL*",
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
                          const SizedBox(height: 5),
                        ],
                      )
                  )

                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

  Future addGoal() async
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
              height: MediaQuery.of(context).size.height*0.48 ,
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:  [
                          Container(
                              margin: EdgeInsets.only(right: 80, top: 10),
                              child: Center(child: Text("ADD GOAL",style: TextStyle(color: Colors.black, fontSize: 16),))),
                          IconButton(
                            onPressed: () =>Navigator.pop(context),
                            icon:Icon(Icons.close, size: 40,), color: ConstantColor.DARK_BLUE,)

                        ],),


                    ),
                    Container(
                        margin: EdgeInsets.symmetric(horizontal: 30,),
                        child:
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
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
                                  suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined, color: ConstantColor.PINK, size: 30,),
                                  hintText: "GOAL NAME*",
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
                                  hintText: "ACTION PLAN*",
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
                                  hintText: "AMOUNT NEEDED TO COMPLETE GOAL*",
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
                                  suffixIcon: const Icon(Icons.calendar_today_outlined, color: ConstantColor.PINK, size: 25,),
                                  hintText: "START DATE*",
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
                                  suffixIcon: const Icon(Icons.calendar_today_outlined, color: ConstantColor.PINK, size: 25,),
                                  hintText: "TARGET DATE OF COMPLETION",
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
          ),
        );
      },
    );
  }
}
