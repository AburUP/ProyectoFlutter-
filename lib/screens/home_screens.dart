import 'package:flutter/material.dart';

class homeScreens extends StatelessWidget {
  const homeScreens({Key? key}) : super(key: key);

  //variable , propiedad

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize30 = const TextStyle(fontSize: 30);
    int counter = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 10,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'clik counter',
              style: fontSize30,
            ),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.adb_rounded,
          color: Color.fromARGB(255, 226, 173, 12),
        ),
        onPressed: () {
          print('hola mundo: $counter');
          counter++;
        },
      ),
    );
  }
}
