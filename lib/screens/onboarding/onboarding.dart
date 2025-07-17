import 'dart:async';

import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  State<Onboarding> createState() => _Onboarding();
}

class _Onboarding extends State<Onboarding> {
  int currentIndex = 0;
  final PageController pageController = PageController();

  final List<String> imagePaths = [
    "assets/images/CaptureYourThoughtsQuickly.png",
    "assets/images/ImageToTextConverter.png",
    "assets/images/TodoList.png",
  ];

  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (pageController.hasClients) {
        int nextPage = (pageController.page?.round() ?? 0) + 1;

        if (imagePaths.length == nextPage) {
          nextPage = 0;
        }

        pageController.animateToPage(
          nextPage,
          duration: Duration(microseconds: 700),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFFFB347), Color.fromARGB(255, 131, 113, 113)],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    Text(
                      "TajNote",
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: "FugazOneRegular",
                        color: Colors.black,
                      ),
                    ),
                    Text("V1.1"),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  "Forgot Password ?",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/login");
                },
              ),
              ListTile(
                title: Text(
                  "Privacy Policy ?",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/privacy_policy");
                },
              ),
              ListTile(
                title: Text(
                  "Terms of Use",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/terms_of_use");
                },
              ),
            ],
          ),
        ),
      ),

      body: Builder(
        builder:
            (context) => Column(
              children: [
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(Icons.menu, color: Color(0xFFFFB347)),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 10,
                      left: 20,
                      bottom: 50,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "WELCOME TO\n",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: "TajNote",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "FugazOneRegular",
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // 3 image slide show pageview
                Expanded(
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: imagePaths.length,
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder:
                        (context, index) => Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                            right: 10,
                            bottom: 100,
                          ),
                          child: Image.asset(
                            imagePaths[index],
                            fit: BoxFit.contain,
                          ),
                        ),
                  ),
                ),

                // Progess Bar Dot
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(imagePaths.length, (index) {
                      return AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        height: 8,
                        width: currentIndex == index ? 40 : 20,

                        decoration: BoxDecoration(
                          color:
                              currentIndex == index
                                  ? const Color(0xFFFFB347)
                                  : Colors.grey[300],
                          borderRadius: BorderRadius.circular(4),
                        ),
                      );
                    }),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/register");
                    },
                    child: Text(
                      "CREATE ACCOUNT",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFFB347),
                      fixedSize: Size(300, 50),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/login");
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(color: Color(0xFFFFFB347)),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(300, 50),
                    ),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
