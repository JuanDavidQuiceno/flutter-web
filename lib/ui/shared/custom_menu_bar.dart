import 'package:curso_web/ui/shared/custom_flat_botton.dart';
import 'package:flutter/material.dart';

import '../../global_locator.dart';
import '../../router/navigation.dart';
import '../../services/navigation_service.dart';
import '../../util/resposive/responsive.dart';

class CustomMenuBar extends StatelessWidget {
  const CustomMenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.indigo,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Responsive.isMobile(context)
          ? Column(
              children: _buttons,
            )
          : Row(
              children: _buttons,
            ),
    );
  }

  List<Widget> get _buttons => [
        CustomFlatButton(
          description: 'Home',
          onPressed: () {
            global<NavigationService>().navigateTo('/counter');
          },
          color: Colors.white,
        ),
        const SizedBox(width: 10),
        CustomFlatButton(
          description: 'Contador provider',
          onPressed: () {
            global<NavigationService>().navigateTo('/provider');
          },
          color: Colors.white,
        ),
        const SizedBox(width: 10),
        CustomFlatButton(
          description: 'Otra pagina',
          onPressed: () {
            global<NavigationService>().navigateTo('/404');
          },
          color: Colors.white,
        ),
      ];
}
