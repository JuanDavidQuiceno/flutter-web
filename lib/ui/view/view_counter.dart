import 'package:flutter/material.dart';

import '../shared/custom_flat_botton.dart';

class CounterView extends StatefulWidget {
  static const String routeName = '/counter';
  const CounterView({Key? key}) : super(key: key);

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int contador = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // const Spacer(),
          FittedBox(
            child: Text('Home counter'),
          ),
          FittedBox(
            child: Text(
              'Counter: $contador',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                description: 'Decrementar',
                onPressed: () {
                  setState(() {
                    contador--;
                  });
                },
              ),
              CustomFlatButton(
                description: 'Incrementar',
                onPressed: () {
                  setState(() {
                    contador++;
                  });
                },
              ),
            ],
          ),
          // const Spacer(),
        ],
      ),
    );
  }
}
