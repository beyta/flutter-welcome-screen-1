import 'package:flutter/material.dart';
import 'package:flutterwelcome/routes/routes.dart';
import 'package:flutterwelcome/theme.dart';
import 'package:flutterwelcome/views/HomePage/state/homepageStateProvider.dart';
import 'package:provider/provider.dart';
import 'constants/config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (_) {
              HomePageStateProvider();
        })
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: bHomPageTitle,
        theme: byAppTheme,
        initialRoute: AppRoutes.ROUTE_Initial,
        onGenerateRoute: AppRoutes.generateRoutes,
      ),
    );
  }
}
