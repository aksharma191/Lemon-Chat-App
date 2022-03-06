import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lemon/screens/screens.dart';
import 'package:lemon/themes.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';
import 'package:lemon/app.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  final client = StreamChatClient(streamKey);
  runApp(MyApp(
    client: client,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.client,
  }) : super(key: key);

  final StreamChatClient client;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.light,
      title: 'Lemon',
      builder: (context, child) {
        return StreamChatCore(
          client: client,
          child: (ChannelsBloc(
            child: UsersBloc(child: child!),
          )),
        );
      },
      home: AnimatedSplashScreen(
        splash: FontAwesomeIcons.solidLemon,
        backgroundColor: Colors.white,
        splashIconSize: 200,
        duration: 3000,
        splashTransition: SplashTransition.scaleTransition,
        nextScreen: SelectUserScreen(),
      ),
    );
  }
}
