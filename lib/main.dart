import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:update_example/home_page.dart';

const prefsKey = 'key';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();

  if (prefs.containsKey(prefsKey)) {
    await prefs.setString(prefsKey, 'UPDATED');
  } else {
    await prefs.setString(prefsKey, 'NEWv1.1');
  }

  runApp(
    Provider<SharedPreferences>.value(
      value: prefs,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}
