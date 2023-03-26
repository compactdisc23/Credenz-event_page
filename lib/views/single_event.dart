import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/events_page.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:glassmorphism_ui/glassmorphism_ui.dart';
import 'package:shifting_tabbar/shifting_tabbar.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabcontroller = TabController(length: 4, vsync: this);
    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   foregroundColor: Colors.transparent,
      //   title: Text(
      //     'WallStreet',
      //     style: TextStyle(fontFamily: 'Mars', color: Colors.black),
      //   ),
      // ),
      body: Stack(
        children: [
          Center(
            child: ClipPath(
              clipper: BackgroundClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.7),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 205, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(
                        // color: Colors.amber.withOpacity(0.1)
                        ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                            child: DefaultTabController(
                          length: 4,
                          child: ShiftingTabBar(
                            // labelFlex: 2,
                            labelStyle: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            controller: tabcontroller,
                            color: Colors.transparent,
                            tabs: [
                              ShiftingTab(
                                  icon: const Icon(Icons.info), text: 'Info'),
                              ShiftingTab(
                                  icon: const Icon(Icons.file_copy),
                                  text: 'Rules'),
                              ShiftingTab(
                                  icon: const Icon(Icons.bar_chart),
                                  text: 'Judging'),
                              ShiftingTab(
                                  icon: const Icon(Icons.contact_page),
                                  text: 'Contact'),
                            ],
                          ),
                        )),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          color: Colors.amber.withOpacity(0.2),
                          width: double.maxFinite,
                          height: 380,
                          child: TabBarView(
                            clipBehavior: Clip.antiAlias,
                            controller: tabcontroller,
                            children: [
                              Center(
                                  child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 65,
                                  ),
                                  Container(
                                      height: 120,
                                      width: 150,
                                      child: Lottie.asset(
                                          'assets/hourglass.json')),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('Coming Soon...')
                                ],
                              )),
                              Center(
                                  child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 65,
                                  ),
                                  Container(
                                      height: 120,
                                      width: 150,
                                      child: Lottie.asset(
                                          'assets/hourglass.json')),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('Coming Soon...')
                                ],
                              )),
                              Center(
                                  child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 65,
                                  ),
                                  Container(
                                      height: 120,
                                      width: 150,
                                      child: Lottie.asset(
                                          'assets/hourglass.json')),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('Coming Soon...')
                                ],
                              )),
                              Center(
                                  child: Column(
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 65,
                                  ),
                                  Container(
                                      height: 120,
                                      width: 150,
                                      child: Lottie.asset(
                                          'assets/hourglass.json')),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text('Coming Soon...')
                                ],
                              )),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),
                        // price && fab || eb
                        Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Price',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'Rs. 40/person',
                                  style: TextStyle(fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            ElevatedButton(
                                onPressed: () {}, child: Text('Add to Cart'))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            left: MediaQuery.of(context).size.width * 0.20,
            top: MediaQuery.of(context).size.height * 0.075,
            child: Container(
              margin: const EdgeInsets.fromLTRB(40, 100, 0, 0),
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient:
                    LinearGradient(colors: [Colors.purple, Colors.transparent]),
                border: Border.all(
                  width: 2,
                ),
              ),
              child: const Hero(
                tag: 'wallstreet',
                child: GlassImage(
                  blur: 0.5,
                  image: Image(
                    image: AssetImage('assets/wallstreet.8165edf9.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ).blurClipped(blur: 1),
          ),

          // Positioned(
          //   left: 75,
          //   top: 50,
          //   child: Container(
          //     padding: EdgeInsets.fromLTRB(30, 20, 50, 0),
          //     height: MediaQuery.of(context).size.height * 0.4,
          //     width: MediaQuery.of(context).size.width * 0.7,
          //     child: Column(
          //       children: [
          //         Hero(
          //           tag: 'wallstreet',
          //           child: Image(
          //             image: NetworkImage(
          //                 'https://credenz.in/static/media/wallstreet.8165edf9.png'),
          //             fit: BoxFit.contain,
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundnessFactor = size.height * 0.05;

    var path = Path();

    path.moveTo(0, size.height * 0.33);
    path.lineTo(0, size.height - roundnessFactor);
    path.quadraticBezierTo(0, size.height, roundnessFactor, size.height);
    path.lineTo(size.width - roundnessFactor, size.height);
    path.quadraticBezierTo(
        size.width, size.height, size.width, size.height - roundnessFactor);
    path.lineTo(size.width, roundnessFactor * 2);
    path.quadraticBezierTo(
        size.width - roundnessFactor * 0.5,
        roundnessFactor * 1.15,
        size.width - roundnessFactor * 1.5,
        roundnessFactor * 1.65);
    path.lineTo(
        roundnessFactor * 0.6, size.height * 0.33 - roundnessFactor * 0.3);
    path.quadraticBezierTo(
        0, size.height * 0.33, 0, size.height * 0.33 + roundnessFactor);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
