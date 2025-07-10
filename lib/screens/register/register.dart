import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("TajNote Register"),),
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
                hintText: "Enter Full Name",
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
              child: Text("Register",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              TextButton(onPressed: (){
                Navigator.pushReplacementNamed(context, "/login");
              }, child: Text("Already have an account? Login")),

            ],
          )
        ],
      ),
    );
  }
  
}