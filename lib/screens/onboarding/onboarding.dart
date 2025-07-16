import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 100, 100, 99)
        ,
        

      ),

      body: Builder(builder: (context)=>
        Column(
          children: [
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(onPressed: (){
                Scaffold.of(context).openDrawer();
              },
               icon: Icon(Icons.menu,color: Color(0xFFFFB347)),

            ))

          ],
        )
      
      ),
      
    );
  }
  
}