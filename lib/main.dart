import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '플루터 앱',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: '플루터 데모 홈 페이지'),


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
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('너는 언제든 버튼을 누를수 있다'),
          Text('$_counter', style: Theme.of(context).textTheme.display1,)

        ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: _IncreamentCounter,
      tooltip: 'Increament',
       child: Icon(Icons.add)
    ),
    );
  }

  void _IncreamentCounter() {
    setState(() {
      _counter++;

    });
  }
}
