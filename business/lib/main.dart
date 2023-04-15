import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'widget/active_card.dart';
import 'widget/circle_Avatar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GNav(
            gap: 5.0,
            tabActiveBorder: Border.all(color: Colors.black, width: 1),
            padding: EdgeInsets.all(10.0),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: "home",
              ),
              GButton(
                icon: Icons.favorite,
                text: "Loved",
              ),
              GButton(
                icon: Icons.search,
                text: "search",
              ),
              GButton(
                icon: Icons.settings,
                text: "settings",
              )
            ],
          ),
        ),
        backgroundColor: Colors.red.shade50,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 30.0,
              backgroundColor: Colors.orange,
              child: Icon(
                Icons.face,
                color: Colors.black,
              ),
            ),
          ),
          title: const Text(
            "hi! sifat",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 18.0),
              child: Icon(
                Icons.notification_add_rounded,
                color: Colors.orangeAccent,
              ),
            )
          ],
        ),
        body: Container(
          child: Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(left: 8.0, top: 20.0),
                            child: Text(
                              "Tasks For Today:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, top: 15.0, bottom: 20.0),
                            child: Row(
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(right: 5.0),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                  ),
                                ),
                                Text(
                                  "5 available",
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 8.0, right: 18.0),
                            height: 45.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white,
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(12, 15, 0, 12),
                                  child: Text(
                                    "Search",
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 250.0),
                                  child: Icon(Icons.search),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12.0, vertical: 15.0),
                            child: Container(
                              child: Row(
                                children: const [
                                  Text(
                                    "Last Connections",
                                    style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 145.0),
                                    child: Text("see all"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: const [
                                MyCircleAvatar(color: Colors.orange),
                                MyCircleAvatar(color: Colors.red),
                                MyCircleAvatar(color: Colors.orange),
                                MyCircleAvatar(color: Colors.red),
                                MyCircleAvatar(color: Colors.orange),
                                MyCircleAvatar(color: Colors.red),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 18.0, top: 18.0),
                            child: Row(
                              children: const [
                                Expanded(
                                  flex: 8,
                                  child: Text(
                                    "Active Project",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Text("See All"),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.white,
                        ),
                        width: double.infinity,
                        child: SingleChildScrollView(
                          child: Column(
                            children: const [
                              activeCard(
                                  firstText: "Numero 10",
                                  secondText: "4d",
                                  thrirdText: "Blogs Special Posts",
                                  fourthText: "Deadline is today"),
                              activeCard(
                                  firstText: "Grace Aroma",
                                  secondText: "7d",
                                  thrirdText: "New Capmain Review",
                                  fourthText: "Deadline tomorrow"),
                              activeCard(
                                  firstText: "Roman Circle",
                                  secondText: "6d",
                                  thrirdText: "Debug the Code",
                                  fourthText: "Deadline day after tomorrow"),
                              activeCard(
                                  firstText: "Numero 10",
                                  secondText: "4d",
                                  thrirdText: "Blogs Special Posts",
                                  fourthText: "Deadline is today"),
                            ],
                          ),
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
