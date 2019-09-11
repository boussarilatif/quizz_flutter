import 'package:flutter/material.dart';

void main() {
  runApp(QuizzPage());
}

class QuizzPage extends StatefulWidget {
  @override
  _QuizzPageState createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          title: Text('Quizz App'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 5,
                    child: Center(
                  child: Text(
                    'the posed question it is there ,give me response',
                    style: TextStyle(color: Colors.white),
                  ),
                )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      color: Colors.green,
                      child: Text(
                        'TRUE',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () => {},
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FlatButton(
                      color: Colors.red,
                      child: Text(
                        'False',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () => {},
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
