// ignore_for_file: depend_on_referenced_packages

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:wiki_app/grounded/landing_page.dart';
import 'package:wiki_app/helpers/constants.dart';
import 'package:wiki_app/helpers/router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouterLink.generateRoute,
          initialRoute: root,
          title: 'Grounded Wiki',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const LandingPage()),
    );
  }
}
