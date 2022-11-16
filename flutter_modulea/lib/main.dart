import 'package:flutter/material.dart';
import 'package:flutter_common/flutter_common.dart';

class MyModelHomePage extends StatefulWidget {
  const MyModelHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyModelHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyModelHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: GestureDetector(
            onTap: (){
              Navigator.of(context).pushNamed(RouteName.home2);
            },
            child: const Icon(Icons.add)),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
