import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:studentsaving/Constants/constant_colors.dart';
import 'package:studentsaving/UI/drawer.dart';

class BudgetList extends StatefulWidget {
  const BudgetList({Key key}) : super(key: key);

  @override
  _BudgetListState createState() => _BudgetListState();
}

class _BudgetListState extends State<BudgetList> {
  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: Column(
          children: [
            Row(
              children: <Widget>[
                // const SizedBox(
                //   height: 18,
                // ),
                Expanded(
                  child: AspectRatio(
                    aspectRatio: 1.5,
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '\$700',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 22),
                              ),
                              Text(
                                "LEFT TO SPEND",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                            ],
                          ),
                        ),
                        PieChart(
                          PieChartData(
                              sectionsSpace: 10.0,
                              borderData: FlBorderData(
                                show: false,
                              ),
                              centerSpaceRadius: 80,
                              sections: showingSections()),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: MediaQuery.of(context).size.height * .05,
              decoration: BoxDecoration(
                  border: Border.all(
                    color: ConstantColor.PINK,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(50))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.arrow_back_ios,
                    color: ConstantColor.PINK,
                  ),
                  Text(
                    'MAY 2021',
                    style: TextStyle(color: ConstantColor.PINK),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: ConstantColor.PINK,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              // padding: const EdgeInsets.symmetric(horizontal: 15),
              height: MediaQuery.of(context).size.height * .07,
              decoration: const BoxDecoration(
                color: ConstantColor.BLUE,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    'MONTHLY INCOME',
                    style: TextStyle(color: ConstantColor.WHITE),
                  ),
                  Text(
                    '\$1000',
                    style: TextStyle(color: ConstantColor.WHITE),
                  ),
                ],
              ),
            ),
            Flexible(
              fit: FlexFit.loose,
              child: ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(),
                            ),
                            const Expanded(
                              flex: 1,
                              child: Text(
                                'BUDGETED',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            const Expanded(
                              flex: 1,
                              child: Text(
                                'SPENT',
                                style: TextStyle(color: ConstantColor.BLUE),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'RENT',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$500',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$500',
                                style: TextStyle(color: ConstantColor.BLUE),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'UTILITIES',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$500',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$500',
                                style: TextStyle(color: ConstantColor.BLUE),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'GROCERIES',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$500',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$500',
                                style: TextStyle(color: ConstantColor.BLUE),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'ENTERTAINMENT',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$500',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$500',
                                style: TextStyle(color: ConstantColor.BLUE),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'BANK PAYMENT',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\1000',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$1000',
                                style: TextStyle(color: ConstantColor.BLUE),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'CREDIT CARD',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$500',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$500',
                                style: TextStyle(color: ConstantColor.BLUE),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'CAR PAYMENT',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\1000',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$1000',
                                style: TextStyle(color: ConstantColor.BLUE),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'GAS',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$500',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$500',
                                style: TextStyle(color: ConstantColor.BLUE),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'SUBSCRIPTIONS',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\1000',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$1000',
                                style: TextStyle(color: ConstantColor.BLUE),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Row(
                          children: const [
                            Expanded(
                              flex: 2,
                              child: Text(
                                'GYM MEMBERSHIP',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$500',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                '\$500',
                                style: TextStyle(color: ConstantColor.BLUE),
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    // padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: MediaQuery.of(context).size.height * .07,
                    decoration: const BoxDecoration(
                      color: ConstantColor.BLUE,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          'UNBUDGETED EXPENSES',
                          style: TextStyle(color: ConstantColor.WHITE),
                        ),
                        Text(
                          '\$500',
                          style: TextStyle(color: ConstantColor.WHITE),
                        ),
                      ],
                    ),
                  ),
                  // const SizedBox(height: 10,),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    // padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: MediaQuery.of(context).size.height * .07,
                    decoration: const BoxDecoration(
                      color: ConstantColor.BLUE,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          'SAVINGS TO DATE',
                          style: TextStyle(color: ConstantColor.WHITE),
                        ),
                        Text(
                          '\$500',
                          style: TextStyle(color: ConstantColor.WHITE),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
        // bottomNavigationBar: Container(
        //   padding: const EdgeInsets.only(top: 10, bottom: 10),
        //   decoration: const BoxDecoration(
        //     color: ConstantColor.DARK_BLUE,
        //   ),
        //   child:
        //   BottomNavigationTabBarView(_currentIndex, onTabChange: (index) {
        //     _currentIndex = index;
        //     setState(() {});
        //     if (_currentIndex == 3 && _currentIndex == lastIndex) {}
        //     lastIndex = index;
        //   }),
        // ),
      ),
    );
  }


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
