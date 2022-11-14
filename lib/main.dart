import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:surprise_me/firebase_options.dart';
import 'package:surprise_me/src/common/app.dart';
import 'package:surprise_me/src/common/di.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  configureDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const App();
  }
}
