import 'package:flutter/material.dart';

void main() {
  runApp(const BilangApp());
}

class BilangApp extends StatelessWidget {
  const BilangApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BILANG',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFF5C542)),
        scaffoldBackgroundColor: const Color(0xFFFFFDF7),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'BILANG',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Kamu bilang. BILANG yang ingat.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                FilledButton(
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 28, vertical: 14),
                    child: Text('BILANG'),
                  ),
                ),
                const SizedBox(height: 12),
                const Text('Fondasi BUILD 31 siap dikembangkan.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
