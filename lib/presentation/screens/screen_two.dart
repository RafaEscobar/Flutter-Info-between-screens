import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget{
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda pantalla'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Volver')
        ),
      ),
    );
  }
}