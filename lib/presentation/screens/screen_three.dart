import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget{
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Envio de datos'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Text('Número $index'),
        )
      ),
    );
  }
}