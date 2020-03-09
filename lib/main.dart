import 'package:flutter/material.dart';
void main(){
runApp(MyApp());
}

class MyApp extends  StatefulWidget {
@override
  State<StatefulWidget> createState() {

    return _MyAppState();
  }

}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

    @override
  Widget build(BuildContext context) {
      var question=["What\'s is your fav animal?",
                    "whats your fav color?"];
      return MaterialApp(home: Scaffold(
        appBar: AppBar(
          title:
            Text("App Bar"),
        ),
        body: Column(children: [Text(question[_questionIndex]),
        RaisedButton(child:Text('answer 1'),onPressed:answerQuestion),
          RaisedButton(child:Text('answer 2'),onPressed: answerQuestion),
          RaisedButton(child:Text('answer 3'),onPressed: answerQuestion),
//          RaisedButton(child:Text('answer 3'),onPressed: (){print('gf');},),

        ],
        ),
      ),
      );
    }
}
