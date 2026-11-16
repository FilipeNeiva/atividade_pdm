import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class LocaisPage extends StatefulWidget {
  const LocaisPage({super.key});

  @override
  State<LocaisPage> createState() => _LocaisPageState();
}

class _LocaisPageState extends State<LocaisPage>
    with SingleTickerProviderStateMixin {
    
    final LatLng _center = const LatLng(45.521563, -122.677433);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Locais'),
        centerTitle: true,
      ),
      body: Center(child: Text('Locais'),),
    );
  }

}