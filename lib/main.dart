import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './splash.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(
  //   SystemUiMode.manual,
    
  //   overlays: [
      
  //     SystemUiOverlay.bottom, // Shows Status bar and hides Navigation bar
  //   ],
  // );
  // await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
