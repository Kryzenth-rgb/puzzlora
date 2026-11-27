import 'package:flutter/material.dart';

void main() => runApp(const PuzzloraApp());

class PuzzloraApp extends StatelessWidget {
  const PuzzloraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Puzzlora',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(0xFF11182B),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF7957F5),
          secondary: Color(0xFF40C8E8),
        ),
      ),
      home: const StartScreen(),
    );
  }
}

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int _touches = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'Puzzlora',
                  style: TextStyle(
                    fontSize: 44,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFFF7F8FC),
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Cinq univers. Une infinité de défis.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFA9B4CB),
                  ),
                ),
                const SizedBox(height: 40),
                FilledButton(
                  onPressed: () => setState(() => _touches++),
                  style: FilledButton.styleFrom(
                    minimumSize: const Size(220, 56),
                  ),
                  child: const Text('Toucher'),
                ),
                const SizedBox(height: 20),
                Text(
                  'Touches : $_touches',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Color(0xFF40C8E8),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
