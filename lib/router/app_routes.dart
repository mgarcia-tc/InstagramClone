import 'package:flutter/material.dart';
import 'package:instagram_app/page/profile_page.dart';
import '../page/home_page.dart';
import '../page/search_page.dart';

class AppRoutes {
  static const initialRoute = "home";

  static Map<String, Widget Function(BuildContext)> routes = {
    "home": (BuildContext context) => const HomePage(),
    "search": (BuildContext context) => const SearchPage(),
    "profile": (BuildContext context) => const ProfilePage(),
  };
}
