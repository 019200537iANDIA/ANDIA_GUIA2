import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/counter_viewmodel.dart';

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<CounterViewModel>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("MVVM Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Número grande en el centro
            Text(
              "${viewModel.count}",
              style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),

            // Botones estilo "reproductor de música"
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Decrementar (izquierda)
                IconButton(
                  iconSize: 50,
                  icon: const Icon(Icons.fast_rewind, color: Colors.red),
                  onPressed: viewModel.decrement,
                ),

                const SizedBox(width: 30),

                // Reiniciar (centro)
                IconButton(
                  iconSize: 60,
                  icon: const Icon(Icons.refresh, color: Colors.blue),
                  onPressed: viewModel.reset,
                ),

                const SizedBox(width: 30),

                // Incrementar (derecha)
                IconButton(
                  iconSize: 50,
                  icon: const Icon(Icons.fast_forward, color: Colors.green),
                  onPressed: viewModel.increment,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
