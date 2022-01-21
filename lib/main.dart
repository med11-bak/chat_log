import 'package:chat/app.dart';
import 'package:chat/screens/screens.dart';
import 'package:chat/screens/select_user_screen.dart';
import 'package:chat/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';
void main() {
  final client =StreamChatClient(streamKey);
  runApp( MyApp(
    client: client,
    appTheme: AppTheme(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp(
    {Key? key ,
  required this.client,
  required this.appTheme,



  }) : super(key: key);

  final StreamChatClient client;
   final AppTheme appTheme;
  // final _init= Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      darkTheme: appTheme.dark,
      themeMode: ThemeMode.dark,
      title: 'Chatter',
      builder: (context , child){
        return StreamChatCore(
          client: client,
          child: ChannelsBloc(
            child: UsersBloc(child: child!),
            ),
            );
      },
      home:const SelectUserScreen(),
    );
    
  }
}

