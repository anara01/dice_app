import 'package:flutter/material.dart';

class MisalBarak extends StatefulWidget {
  const MisalBarak({Key key}) : super(key: key);

  @override
  _MisalBarakState createState() => _MisalBarakState();
}

class _MisalBarakState extends State<MisalBarak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFBB603),
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.red,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
            ),
          ),
          Container(height: 50),
          Expanded(
            child: Container(
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}


/// Freepik.com graphics
/// Flaticon.com icons
/// UI - User Interface (Design)
/// UX - User Experience