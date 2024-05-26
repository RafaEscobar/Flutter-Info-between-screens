import 'package:flutter/material.dart';
import 'package:navigate_between_screens/presentation/screens/screen_three.dart';
import 'package:navigate_between_screens/presentation/screens/screen_two.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: const Text('Primera pantalla'),
     ),
     body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScreenTwo()),
              );
            },
            child: const Text('Ir a pantalla 2')
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScreenThree()),
              );
            },
            child: const Text('Ir a pantalla 3')
          ),
        ],
      ),
     ),
    );
  }
}