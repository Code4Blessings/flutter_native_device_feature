import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_native_device/screens/screens.dart';
import './providers/great_places.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: GreatPlaces(),
          child: MaterialApp(
        title: 'Great Places',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.purpleAccent,
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routeName: (ctx) => AddPlaceScreen()
        },
      ),
    );
  }
}

