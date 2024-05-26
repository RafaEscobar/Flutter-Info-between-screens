import 'package:flutter/material.dart';

class ScreenFour extends StatelessWidget {
  final String code;
  const ScreenFour({
    required this.code,
    super.key
  });

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle de la información'),
      ),
      body: Center(
        child: Text('El código solicitado es: $code'),
      ),
    );
  }
}