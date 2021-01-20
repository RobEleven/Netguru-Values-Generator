import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/netguru_values.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NetguruValues(),
      child: MaterialApp(
        home: AppSplashScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
