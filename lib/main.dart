import 'package:flutter/material.dart';
import 'package:instagram_app/api/dio.dart';
import 'package:instagram_app/providers/busqueda_provider.dart';
import 'package:instagram_app/router/app_routes.dart';
import 'package:provider/provider.dart';

void main() {
  Api.configureDio();
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => BusquedaProvider())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
    );
  }
}
