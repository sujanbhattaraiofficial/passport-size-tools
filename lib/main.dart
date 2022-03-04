import 'package:flutter/material.dart';
import 'package:passport_maker/config/routes/route_services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteServices.generateRoute,
      initialRoute: "/",
    );
  }
}
