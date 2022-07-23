import 'package:curso_web/router/navigation.dart';
import 'package:flutter/material.dart';

import '../shared/custom_flat_botton.dart';

class ErrorPage extends StatefulWidget {
  static const String routeName = '/page404';
  const ErrorPage({Key? key}) : super(key: key);

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Page 404',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          CustomFlatButton(
            description: 'Intentar de nuevo',
            onPressed: () {
              // navigateToCounterUntil(context),
            },
          )
        ],
      ),
    );
  }
}
