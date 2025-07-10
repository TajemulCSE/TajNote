import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});


  @override
  Widget build(BuildContext context) {
   
    return Scaffold( appBar: AppBar(title: Text("TajNote"), actions: [IconButton(onPressed: (){
      Navigator.pushNamed(context, "/profile");
    }, icon: Icon(Icons.person))],
    
    ),

    floatingActionButton: FloatingActionButton(onPressed: (){
      Navigator.pushNamed(context, "/addnote");
    },child: Icon(Icons.add),),

    



    );
  }
  
}