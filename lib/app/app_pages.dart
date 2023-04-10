import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work2/app/app_routes.dart';
import 'package:work2/screens/brend_page.dart';
import 'package:work2/screens/heart_page.dart';
import 'package:work2/screens/home_page.dart';
import 'package:work2/screens/natif_page.dart';
import 'package:work2/screens/person_page.dart';
import 'package:work2/screens/search_page.dart';
import 'package:work2/screens/splash_page.dart';
import 'package:work2/screens/vector_page.dart';

abstract class AppPages {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouts.splash:
        return MaterialPageRoute(builder: (_) => const SplashPage());
      case AppRouts.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case AppRouts.heart:
        return MaterialPageRoute(builder: (_) => const HeartPage());
      case AppRouts.vector:
        return MaterialPageRoute(builder: (_) => const VectorPage());
      case AppRouts.natif:
        return MaterialPageRoute(builder: (_) => const Natifpage());
      case AppRouts.person:
        return MaterialPageRoute(builder: (_) => const PersonPage());
      case AppRouts.search:
        return MaterialPageRoute(builder: (_) => const SearchPage());
      case AppRouts.breand:
        return MaterialPageRoute(builder: (_) => const BrendPage());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
