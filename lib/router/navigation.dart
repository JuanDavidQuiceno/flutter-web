import 'package:curso_web/ui/layuot/layout_page.dart';
import 'package:flutter/material.dart';

import '../ui/view/error_page.dart';

// navigateToSplash(BuildContext context) =>
//     Navigator.of(context).pushAndRemoveUntil(
//         MaterialPageRoute(
//           builder: (BuildContext context) => SplashScreen(),
//           settings: RouteSettings(
//             name: SplashScreen.routeName,
//           ),
//         ),
//         (Route route) => false);

navigateCanPop(BuildContext context) => Navigator.canPop(context);

navigatePop(BuildContext context, bool pop) => Navigator.of(context).pop(pop);

// navigateToCounter(BuildContext context) =>
//     Navigator.pushNamed(context, MainLayoutPage.routeName);

// navigateToCounterUntil(BuildContext context) =>
//     Navigator.pushNamedAndRemoveUntil(
//       context,
//       MainLayoutPage.routeName,
//       ModalRoute.withName('/'),
//     );

// navigateToProvider(BuildContext context) => Navigator.pushNamed(
//       context,
//       ProviderPage.routeName,
//     );

navigateToError(BuildContext context) => Navigator.pushNamed(
      context,
      ErrorPage.routeName,
    );
