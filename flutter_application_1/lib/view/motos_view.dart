import 'package:flutter/material.dart';

class MotosView extends StatelessWidget {
  final int minusCount;
  final int plusCount;
  final VoidCallback onMinusPressed;
  final VoidCallback onPlusPressed;

  const MotosView({
    super.key,
    required this.minusCount,
    required this.plusCount,
    required this.onMinusPressed,
    required this.onPlusPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Contador MVVM",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(height: 80),
          Text(
            "Contador de motos: ${minusCount + plusCount}",
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.purple,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                onPressed: onMinusPressed,
                child: const Text("−", style: TextStyle(fontSize: 28)),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.purple,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                ),
                onPressed: onPlusPressed,
                child: const Text("+", style: TextStyle(fontSize: 28)),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Text(
            "Botón −: $minusCount   |   Botón +: $plusCount",
            style: const TextStyle(fontSize: 18, color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
