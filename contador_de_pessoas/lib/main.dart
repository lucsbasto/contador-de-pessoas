import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(title: "Contador de Pessoas", home: Home()),
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _people = 0;
  String _info = "Pode entrar !";

  void _changePeople(int delta) {
    setState(() {
      _people += delta;
      if (_people < 0) {
        _info = "PERA PERA PERA PERA PERA";
      } else if (_people > 30) {
        _info = "CALMA AE MEU PATRÃO !";
      } else {
        _info = "Pode entrar !";
      }
    });
  }

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pessoas $_people',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              '$_info',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: FlatButton(
                    child: Text(
                      '+1',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontSize: 30.0,
                          color: Colors.white),
                    ),
                    onPressed: () {
                      _changePeople(1);
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: FlatButton(
                    child: Text(
                      '-1',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontStyle: FontStyle.italic,
                          color: Colors.white),
                    ),
                    onPressed: () {
                      _changePeople(-1);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
