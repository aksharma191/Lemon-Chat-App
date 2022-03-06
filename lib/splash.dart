import 'package:flutter/material.dart';
import 'package:lemon/screens/home_screen.dart';

class LemonSplash extends StatefulWidget {
  const LemonSplash({Key? key}) : super(key: key);

  @override
  State<LemonSplash> createState() => _LemonSplashState();
}

class _LemonSplashState extends State<LemonSplash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    // ignore: prefer_const_constructors
    await Future.delayed(Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage(
                'https://pbs.twimg.com/profile_images/885866268292722690/0DcenAs9_400x400.jpg'),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                'Lemon',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
