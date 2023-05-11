import 'package:car_app/models/cars.dart';
import 'package:flutter/material.dart';

class CarListPage extends StatefulWidget {
  const CarListPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return CarListPageState();
  }
}

class CarListPageState extends State<CarListPage> {
  List<Car> vehicles = [
    Car(name: 'Tempra', brand: 'Fiat'),
    Car(name: 'Q3', brand: 'Audi')
  ];

  void addNewCar(Car vehicle) {
    setState(() {
      vehicles.add(vehicle);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de veículos'),
        actions: [
          ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pushNamed('/car_form').then((vehicle) => {
                      if (vehicle != null) {addNewCar(vehicle as Car)}
                    });
              },
              icon: Icon(Icons.add),
              label: Text(''))
        ],
      ),
      body: ListView.builder(
          itemCount: vehicles.length,
          itemBuilder: (BuildContext context, int index) {
            Car current = vehicles[index];
            return ListTile(
              title: Text(current.name),
              subtitle: Text(current.brand),
            );
          }),
    );
  }
}
