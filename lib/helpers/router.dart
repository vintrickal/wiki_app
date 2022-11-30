import 'package:flutter/material.dart';
import 'package:wiki_app/grounded/content/backyard/backyard_home.dart';
import 'package:wiki_app/grounded/content/mechanics/mechanics_home.dart';
import 'package:wiki_app/grounded/content/recipes/recipes_home.dart';
import 'package:wiki_app/grounded/content/social/social_home.dart';
import 'package:wiki_app/grounded/home.dart';
import 'package:wiki_app/grounded/landing_page.dart';
import 'package:wiki_app/helpers/constants.dart';
import 'package:wiki_app/widgets/details_landing.dart';

class RouterLink {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Route shortcut can be found on constants.dart

    final Object? args = settings.arguments;
    switch (settings.name) {
      // Root
      case root:
        return MaterialPageRoute(builder: (_) => LandingPage());
      case home:
        return MaterialPageRoute(
            builder: (_) => Home(
                  pageIndex: 0,
                ));
      case backyard:
        return MaterialPageRoute(builder: (_) => BackyardHome());
      case recipe:
        return MaterialPageRoute(builder: (_) => RecipesHome());
      case mechanics:
        return MaterialPageRoute(builder: (_) => MechanicsHome());
      case social:
        return MaterialPageRoute(builder: (_) => SocialHome());
      case detailsLandingRoute:
        return MaterialPageRoute(
            builder: (_) => DetailsLanding(), settings: settings);
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
