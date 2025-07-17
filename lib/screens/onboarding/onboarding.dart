import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  State<Onboarding> createState() => _Onboarding();
}

class _Onboarding extends State<Onboarding> {
  int currentIndex = 0;

  final List<String> imagePaths = [
    "assets/images/CaptureYourThoughtsQuickly.png",
    "assets/images/ImageToTextConverter.png",
    "assets/images/TodoList.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(backgroundColor: const Color.fromARGB(255, 100, 100, 99)),

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

                Expanded(
                  child: PageView.builder(
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
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(imagePaths.length, (index) {
                      return AnimatedContainer(
                        duration: Duration(microseconds: 3000),
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        height: 8,
                        width: currentIndex == index ? 24 : 12,

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
                    onPressed: () {},
                    child: Text(
                      "CREATE ACCOUNT",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFFB347),
                      fixedSize: Size(300, 50)
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(color: Color(0xFFFFFB347)),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: Size(300, 50)
                    ),
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
