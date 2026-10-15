import 'package:flutter/material.dart';
import 'screens/simple1.dart';
import 'screens/simple2.dart';
import 'screens/complex.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Практическая работа',
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _index = 0;

  void goBack() {
    setState(() {
      _index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_index == 1) {
      return SimpleScreen1(onBack: goBack);
    }
    if (_index == 2) {
      return SimpleScreen2(onBack: goBack);
    }
    if (_index == 3) {
      return ComplexScreen(onBack: goBack);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Практическая работа №1'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Выбери макет для просмотра',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _index = 1;
                  });
                },
                child: const Text('Простой макет 1 — Atlantis'),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _index = 2;
                  });
                },
                child: const Text('Простой макет 2 — Meditate'),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    _index = 3;
                  });
                },
                child: const Text('Сложный макет — E-Wallet'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}