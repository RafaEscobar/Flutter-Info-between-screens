import 'package:flutter/material.dart';
import 'package:navigate_between_screens/presentation/screens/screen_four.dart';

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
          itemBuilder: (context, index) => Column(
            children: [
              TextButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blue)
                ),
                onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (context) => ScreenFour(code: '#A$index')
                    )
                  );
                },
                child: Text(
                  'Código de caja #A$index',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),
                ),
              ),
              const SizedBox(height: 10,)
            ],
          )
        )
      ),
    );
  }
}