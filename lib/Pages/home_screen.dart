import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentsaving/Constants/constant_colors.dart';
import 'package:studentsaving/Pages/budget.dart';
import 'package:studentsaving/Pages/budget_list.dart';
import 'package:studentsaving/Pages/login.dart';
import 'package:studentsaving/Pages/resources.dart';
import 'package:studentsaving/Pages/sign_up_screen.dart';
import 'package:studentsaving/UI/drawer.dart';
import 'package:studentsaving/UI/nav_bar.dart';

import 'add_transaction.dart';
import 'goals.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  static const List<Widget> _widgetOptions = <Widget>[
    Budget(),
    Resources(),
    Goals(),
    AddTransaction(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      // appBar: AppBar(
      //   leading: IconButton(
      //     onPressed: () {},
      //     icon: Image.asset('assets/images/smallIcon.png'),
      //     iconSize: 25,
      //   ),
      //   backgroundColor: Colors.white,
      //   iconTheme: const IconThemeData(color: ConstantColor.DARK_BLUE),
      //   elevation: 0.0,
      // ),
      backgroundColor: Colors.white,
      // endDrawer: const DrawerScreen(),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        decoration: const BoxDecoration(
          color: ConstantColor.DARK_BLUE,
        ),
        child:
        BottomNavigationBar(

          elevation: 0,
          backgroundColor: ConstantColor.DARK_BLUE,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ConstantColor.YELLOW,
          selectedLabelStyle: const TextStyle(fontSize: 10),
          unselectedFontSize: 10,
          unselectedItemColor: ConstantColor.WHITE,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/budgetWhite.png"),
                ),
                label: 'BUDGET'
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/resourcesWhite.png"),
              ),
              label: 'RESOURCES',

            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/goalsWhite.png"),
              ),
              label: 'GOALS',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/images/addTransaction.png"),

              ),
              label: 'ADD TRANSACTION',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: (index){
            setState(() {
              _selectedIndex = index;
            });
          },

        ),
      ),
    );
  }

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  List<PieChartSectionData> showingSections() {
    return List.generate(
      9,
      (i) {
        switch (i) {
          case 0:
            return PieChartSectionData(
              color: ConstantColor.DARK_BLUE,
              value: 10,
              title: '',
              radius: 13,
              titleStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff044d7c)),
              titlePositionPercentageOffset: 0.55,
            );
          case 1:
            return PieChartSectionData(
              color: ConstantColor.DARK_BLUE,
              value: 10,
              title: '',
              radius: 13,
              titleStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff044d7c)),
              titlePositionPercentageOffset: 0.55,

              // borderSide: isTouched
              //     ? const BorderSide(color: color0, width: 6)
              //     : BorderSide(color: color0.withOpacity(0)),
            );
          case 2:
            return PieChartSectionData(
              color: ConstantColor.BLUE,
              value: 10,
              title: '',
              radius: 13,
              titleStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff044d7c)),
              titlePositionPercentageOffset: 0.55,

              // borderSide: isTouched
              //     ? const BorderSide(color: color0, width: 6)
              //     : BorderSide(color: color0.withOpacity(0)),
            );
          case 3:
            return PieChartSectionData(
              color: ConstantColor.LIGHT_BLUE,
              value: 10,
              title: '',
              radius: 13,
              titleStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff044d7c)),
              titlePositionPercentageOffset: 0.55,

              // borderSide: isTouched
              //     ? const BorderSide(color: color0, width: 6)
              //     : BorderSide(color: color0.withOpacity(0)),
            );
          case 4:
            return PieChartSectionData(
              color: ConstantColor.LIGHT_BLUE,
              value: 10,
              title: '',
              radius: 13,
              titleStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff044d7c)),
              titlePositionPercentageOffset: 0.55,

              // borderSide: isTouched
              //     ? const BorderSide(color: color0, width: 6)
              //     : BorderSide(color: color0.withOpacity(0)),
            );
          case 5:
            return PieChartSectionData(
              color: ConstantColor.YELLOW,
              value: 10,
              title: '',
              radius: 13,
              titleStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff044d7c)),
              titlePositionPercentageOffset: 0.55,

              // borderSide: isTouched
              //     ? const BorderSide(color: color0, width: 6)
              //     : BorderSide(color: color0.withOpacity(0)),
            );
          case 6:
            return PieChartSectionData(
              color: ConstantColor.LIGHT_YELLOW,
              value: 10,
              title: '',
              radius: 13,
              titleStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff044d7c)),
              titlePositionPercentageOffset: 0.55,

              // borderSide: isTouched
              //     ? const BorderSide(color: color0, width: 6)
              //     : BorderSide(color: color0.withOpacity(0)),
            );
          case 7:
            return PieChartSectionData(
              color: ConstantColor.PINK,
              value: 10,
              title: '',
              radius: 13,
              titleStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff044d7c)),
              titlePositionPercentageOffset: 0.55,

              // borderSide: isTouched
              //     ? const BorderSide(color: color0, width: 6)
              //     : BorderSide(color: color0.withOpacity(0)),
            );
          case 8:
            return PieChartSectionData(
              color: ConstantColor.LIGHT_PINK,
              value: 10,
              title: '',
              radius: 13,
              titleStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff044d7c)),
              titlePositionPercentageOffset: 0.55,

              // borderSide: isTouched
              //     ? const BorderSide(color: color0, width: 6)
              //     : BorderSide(color: color0.withOpacity(0)),
            );
          case 9:
            return PieChartSectionData(
              color: ConstantColor.YELLOW,
              value: 10,
              title: '',
              radius: 13,
              titleStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff044d7c)),
              titlePositionPercentageOffset: 0.55,
            );

          default:
            throw Error().toString();
        }
      },
    );
  }

}
