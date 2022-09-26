import 'package:flutter/material.dart';

class counterscrenns extends StatefulWidget {
  const counterscrenns({Key? key}) : super(key: key);

  @override
  State<counterscrenns> createState() => _counterscrennsState();
}

class _counterscrennsState extends State<counterscrenns> {
  //variable , propiedad
  int counter = 0;

  void increment() {
    counter++;
    setState(() {});
  }

  void reset() {
    counter = 0;
    setState(() {});
  }

  void decremnt() {
    counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize30 = const TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('counterscrenns'),
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustonFloatingAction(
        imcrementF: increment,
        resetF: reset,
        decremetF: decremnt,
      ),
    );
  }
}

class CustonFloatingAction extends StatelessWidget {
  final Function imcrementF;
  final Function decremetF;
  final Function resetF;

  const CustonFloatingAction({
    Key? key,
    required this.imcrementF,
    required this.resetF,
    required this.decremetF,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //boton mas
        FloatingActionButton(
          child: const Icon(
            Icons.add,
            color: Color.fromARGB(255, 226, 173, 12),
          ),
          onPressed: () => imcrementF(),
        ),

        //botnreset

        FloatingActionButton(
          child: const Icon(
            Icons.restore_page,
            color: Color.fromARGB(255, 24, 23, 21),
          ),
          onPressed: () => resetF(),
        ),

        //boton menos
        FloatingActionButton(
          child: const Icon(
            Icons.exposure_minus_1,
            color: Color.fromARGB(255, 226, 173, 12),
          ),
          onPressed: () => decremetF(),
        ),
      ],
    );
  }
}
