import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:update_example/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _loadedString;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blue,
              onPressed: _loadSavedData,
              child: const Text('Load saved data'),
            ),
            const SizedBox(height: 16),
            Text('Loaded string: $_loadedString'),
          ],
        ),
      ),
    );
  }

  void _loadSavedData() {
    setState(() {
      _loadedString = context.read<SharedPreferences>().getString(prefsKey);
    });
  }
}
