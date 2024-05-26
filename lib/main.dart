import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenOne(),
    );
  }
}

class ScreenOne extends StatelessWidget {
  const ScreenOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: const Text('Navegar entre pantallas'),
     ),
     body: Center(
      child: ElevatedButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyOtherScreen()),
          );
        },
        child: const Text('Continuar')
      ),
     ),
    );
  }
}



class MyOtherScreen extends StatelessWidget{
  const MyOtherScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi otra screen'),
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
