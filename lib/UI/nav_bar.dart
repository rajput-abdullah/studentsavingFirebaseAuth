import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentsaving/Constants/constant_colors.dart';

class BottomNavigationTabBarView extends StatelessWidget {
  var _currentIndex = 0;
  Function onTabChange;

  BottomNavigationTabBarView(this._currentIndex, {this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return bottomNavigationTabBarView();
  }

  var selectedTabs = [  // when user Select icon/tab  (Active tab)
    "assets/images/budgetWhite.png",
    "assets/images/resourcesWhite.png",
    "assets/images/goalsWhite.png",
    "assets/images/addTransaction.png",
  ];
  var unSelectedTabs = [ // when user does not Select icon/tab  (InActive tab)
    "assets/images/budgetWhite.png",
    "assets/images/resourcesWhite.png",
    "assets/images/goalsWhite.png",
    "assets/images/addTransaction.png",
  ];

  BottomNavigationBar bottomNavigationTabBarView() {
    const iconSize = 25.0;
    return BottomNavigationBar(

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
      currentIndex: _currentIndex,
      onTap: onTabTapped,

    );
  }

  void onTabTapped(int index) {
    _currentIndex = index;
    onTabChange(index);
  }
}