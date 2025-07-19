import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(title: Text("TajNote Login")),

      body: ListView(
        children: [
          Image.asset(
            "assets/TajNote_Logo.png",
            fit: BoxFit.contain,
            height: 250,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Email",
                contentPadding: EdgeInsets.all(5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                prefixIcon: Icon(Icons.email, color: Color(0xFFFFB347)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Password",
                contentPadding: EdgeInsets.all(5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                prefixIcon: Icon(Icons.password, color: Color(0xFFFFB347)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: ElevatedButton(
              onPressed: () {},
            
              child: Text(
                "Login",
                   style: TextStyle(color: Colors.white,fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFFFB347),
                      fixedSize: Size(300, 50),
                    ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text("Forgot Password?")),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, "/register");
                },
                child: Text(
                  "Do not have an account? Register",
                  style: TextStyle(color: Color(0xFFFFB347)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
