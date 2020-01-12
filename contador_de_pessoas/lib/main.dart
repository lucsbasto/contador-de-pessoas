import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Contador de Pessoas",
      home: Stack(
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
                'Pessoas',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
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
                      onPressed: () {},
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
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
