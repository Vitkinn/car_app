import 'package:car_app/models/cars.dart';
import 'package:flutter/material.dart';

class CarForm extends StatelessWidget {
  const CarForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cadastro de veículos'),
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.of(context).pop(Car(name: 'Teste', brand: 'Teste'));
          },
          child: const Text('Clique aqui'),
        ));
  }
}
