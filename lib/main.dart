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
  Widget _buildButton(){
    return Expanded(
      child: new MaterialButton(
        child: new Text('1'),
        color: Colors.blueGrey,
        textColor: Colors.white,
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
                _buildButton(),
                _buildButton(),
                _buildButton(),
                _buildButton()
              ],
            ),

            Row(
              children: <Widget>[
                _buildButton(),
                _buildButton(),
                _buildButton(),
                _buildButton()
              ],
            ),

            Row(
              children: <Widget>[
                _buildButton(),
                _buildButton(),
                _buildButton(),
                _buildButton()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
