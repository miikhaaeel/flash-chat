import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/screens/welcome_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(
      //   textTheme: TextTheme(
      //     bodyText2: TextStyle(color: Colors.black54),
      //   ),
      // ),
      initialRoute: WelcomeScreen.id,
      routes: <String, WidgetBuilder>{
        WelcomeScreen.id: (BuildContext context) => WelcomeScreen(),
        LoginScreen.id: (BuildContext context) => LoginScreen(),
        RegistrationScreen.id: (BuildContext context) => RegistrationScreen(),
        ChatScreen.id: (BuildContext context) => ChatScreen(),
      },
    );
  }
}
