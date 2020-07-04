import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: () async {
                  await sampleTask1();
                },
                child: Text('Async Task 1'),
              ),
              RaisedButton(
                onPressed: () async {
                  await sampleTask2();
                },
                child: Text('Async Task 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> sampleTask1()async{
    Future.delayed(Duration(seconds: 5), () {
      print('sampleTask1 Done!');
    });
  }
  Future<void> sampleTask2()async{
    Future.delayed(Duration(seconds: 5), () {
      print('sampleTask2 Done!');
    });
  }

}
