import 'package:curso_web/ui/shared/custom_menu_bar.dart';
import 'package:flutter/material.dart';

class MainLayoutPage extends StatelessWidget {
  final Widget child;

  const MainLayoutPage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CustomMenuBar(),
            Spacer(),
            Expanded(child: child),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
