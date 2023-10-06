import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => ResponsiveWrapper.builder(
        BouncingScrollWrapper.builder(context, widget!),
        maxWidth: 1200,
        minWidth: 400,
        defaultScale: true,
        breakpoints: [
          ResponsiveBreakpoint.autoScale(400, name: 'SM'),
          ResponsiveBreakpoint.autoScale(800, name: 'MD'),
          ResponsiveBreakpoint.autoScale(1000, name: 'LG'),
        ],
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Flutter App'),
      ),
      body: Center(
        child: Container(
          color: Colors.lightBlue,
          width: 300,
          height: 200,
          child: Center(
            child: Text(
              'Responsive Container',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
