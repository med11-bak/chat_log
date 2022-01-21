// import 'package:firebase_core/firebase_core.dart';
// import 'package:flutter/material.dart';

// import '../main.dart';


// void main()=> runApp( MyApp());



// class MyApp extends StatelessWidget {
//   final _init= Firebase.initializeApp();
//   @override
//   Widget build(BuildContext context) {
    
//     return FutureBuilder(
//       future: _init,
//       builder:(context, snapshot){
//         if(snapshot.hasError){
//           return ErrorWidget();          
//         }
//         else if(snapshot.hasError){
//           return Login();
//         }
//         else if(snapshot.hasError){ 
//           return Loading();
//         }
//       },
//     );
//   }
// }
// class ErrorWidget extends StatelessWidget {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Center(
//         child: Column(
//           children: [
//             Icon(Icons.error),
//             Text("something went wrong...")
//           ],),
//       ) ,
//     );
//   }
// }
// class Loading extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: CircularProgressIndicator(),
        
//         ),
//     );
//   }
// }