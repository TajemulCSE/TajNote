import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: WidgetStateProperty.all(Colors.amber),
                backgroundColor: WidgetStatePropertyAll(Colors.blue), 
              ),
              child: Text("Login",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextButton(onPressed: (){}, child: Text("Forgot Password?")),
              TextButton(onPressed: (){
                Navigator.pushReplacementNamed(context, "/register");
              }, child: Text("Do not have an account? Register")),

            ],
          )
        ],
      ),
    );
  }
}
