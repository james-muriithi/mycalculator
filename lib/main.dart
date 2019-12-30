import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _buildButton(String buttonText){
    return Expanded(
      child: new OutlineButton(
        padding: EdgeInsets.all(24.0),
        child: new Text(buttonText),
        onPressed: () {},
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            new Text('0'),
            new Expanded(
              child: Divider(),
            ),
            Row(
              children: <Widget>[
                _buildButton('7'),
                _buildButton('8'),
                _buildButton('9'),
                _buildButton('/')
              ],
            ),

            Row(
              children: <Widget>[
                _buildButton('4'),
                _buildButton('5'),
                _buildButton('6'),
                _buildButton('*')
              ],
            ),

            Row(
              children: <Widget>[
                _buildButton('1'),
                _buildButton('2'),
                _buildButton('3'),
                _buildButton('-')
              ],
            ),

            Row(
              children: <Widget>[
                _buildButton('.'),
                _buildButton('0'),
                _buildButton('00'),
                _buildButton('+')
              ],
            ),

            Row(
              children: <Widget>[
                _buildButton('Clear'),
                _buildButton('=')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
