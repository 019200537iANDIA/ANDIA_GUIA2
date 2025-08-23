import 'package:flutter/material.dart';
import '../viewmodel/counter_viewmodel.dart';
import '../view/motos_view.dart';

class MotosScreen extends StatefulWidget {
  const MotosScreen({super.key});

  @override
  State<MotosScreen> createState() => _MotosScreenState();
}

class _MotosScreenState extends State<MotosScreen> {
  final CounterViewModel _viewModel = CounterViewModel();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _viewModel,
      builder: (context, _) {
        return MotosView(
          minusCount: _viewModel.minusCount,
          plusCount: _viewModel.plusCount,
          onMinusPressed: _viewModel.incrementMinus,
          onPlusPressed: _viewModel.incrementPlus,
        );
      },
    );
  }
}
