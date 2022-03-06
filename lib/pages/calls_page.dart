import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  _CallsPageState createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100, bottom: 30),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/885866268292722690/0DcenAs9_400x400.jpg'),
            ),
          ),
          Text(
            'To be updated soon...',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              shadows: <Shadow>[
                (Shadow(
                  offset: Offset(0.5, 0.5),
                  blurRadius: 2.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
