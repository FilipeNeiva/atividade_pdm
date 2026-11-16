import 'package:flutter/material.dart';

class BarHoteisPage extends StatefulWidget {
  const BarHoteisPage({super.key});

  @override
  State<BarHoteisPage> createState() => _BarHoteisPageState();
}

class _BarHoteisPageState extends State<BarHoteisPage>
    with SingleTickerProviderStateMixin {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Bar Hoteis'),
        centerTitle: true,
      ),
      body: Center(child: Text('Bar Hoteis'),),
    );
  }

}