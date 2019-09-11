import 'package:flutter/material.dart';

void main() {
  runApp(QuizzPage());
}

class QuizzPage extends StatefulWidget {
  @override
  _QuizzPageState createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  List<Widget> scoreKeeper = [
    SizedBox(
      width: 8.0,
    )
  ];
  int questionNumber = 0;
  List <String> questions =[
    'javascript est un langage de communication',
    'php est un language frontend',
    'laravel est un framework backend'
  ];

  List<bool> answer = [
    false,false,true
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar: AppBar(
          centerTitle: true,
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
                        questions[questionNumber],
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
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
                      onPressed: () {
                        setState(() {
                           true == answer[questionNumber]
                          ? scoreKeeper.add(Icon(
                            Icons.check,
                            color: Colors.green,
                          ))
                          : scoreKeeper.add(Icon(
                            Icons.close,
                            color: Colors.red,
                          ));

                        });
                      },
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
                      onPressed: () {
                        setState(() {
                           false == answer[questionNumber]
                          ? scoreKeeper.add(Icon(
                            Icons.check,
                            color: Colors.green,
                          ))
                          : scoreKeeper.add(Icon(
                            Icons.close,
                            color: Colors.red,
                          ));
                        });
                      },
                    ),
                  ),
                ),
                Row(
                  children: scoreKeeper,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
