import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/cubit/counter_cubit.dart';
import '../shared/custom_flat_botton.dart';

class ViewProvider extends StatefulWidget {
  static const String routeName = '/provider';
  const ViewProvider({Key? key}) : super(key: key);

  @override
  State<ViewProvider> createState() => _ViewProviderState();
}

class _ViewProviderState extends State<ViewProvider> {
  CounterCubit consumerCubit = CounterCubit();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              FittedBox(
                child: Text('Provider counter'),
              ),
              BlocBuilder<CounterCubit, int>(
                bloc: consumerCubit,
                builder: (_, state) {
                  return FittedBox(
                    child: Text(
                      'Provider: $state',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomFlatButton(
                    description: 'Decrementar',
                    onPressed: () {
                      setState(() {
                        consumerCubit.decrement();
                        //   contador--;
                      });
                    },
                  ),
                  CustomFlatButton(
                    description: 'Incrementar',
                    onPressed: () {
                      setState(() {
                        consumerCubit.increment();
                        //   contador++;
                      });
                    },
                  ),
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
