import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

//StateLessWidget  //do not change value within widget
// class MyHomePage extends StatelessWidget{

//   @override
//   Widget build(BuildContext context) {

//     String name = "Mg Mg";
//     // TODO: implement build
//     return MaterialApp(
//       title: "First App",
//       //theme: ThemeData(primarySwatch: Colors.green),
//       // theme: ThemeData(
//       //     textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(
//       //       primary: Colors.red
//       //     ))
//       // ),
//       home: Scaffold(  

//     appBar: AppBar(title: Text("My App"),
//     ),

//  //Button   
//     body: SingleChildScrollView(  

//         child: Column(children: [

//           Container(child: Text(name),),

//           OutlinedButton(
//           style: OutlinedButton.styleFrom(
//             primary: Colors.black,
//             backgroundColor: Colors.blue,
//             shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
//             textStyle: TextStyle(
//               // color: Colors.black,//no effect with color
//               fontSize: 18, fontStyle: FontStyle.italic
//               ), 
//             ),
            
//           child: Text("Outlined Button"),
//           onPressed: (){
//             name = "Aung Aung";
//             print(name);

//           },
//           ),


//         ],),

//     )





//       ),
      
      
//     );
//   }

// }



//Stateful Widget

class MyHomePage extends StatefulWidget{
    @override
  MyHomePageState createState() {
    return MyHomePageState();
  }
}

class MyHomePageState extends State<MyHomePage>{

//State is the data used in application
//call Ephemeral State  //field within the class that extends State is call Ephemeral State
  String name= "Mg Mg";  //do not create setState within build//in State

  Widget build(BuildContext context){  //when call setState ,rerun build method//recreate widget

    print("Build Method");

    return MaterialApp(
      home: Scaffold(  
        appBar: AppBar(title: Text("My App"),),
        body: Column(children: [

          Container(child: Text(name),),

          OutlinedButton(  
            onPressed: (){
              setState(() {  //do not include within stateless widget
                name = "Aung Aung";
              });

            },
            child: Text("Click")
          )



        ],),
      ),
    );
  }
}

