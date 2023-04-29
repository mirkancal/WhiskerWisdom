import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:whiskerwisdom/blocs/cat_fact/cat_fact_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whiskerwisdom/injection.dart';
import 'package:whiskerwisdom/ui/home_page.dart';

Future<void> main() async {
  await configureDependencies();
  getIt<CatFactBloc>().add(const CatFactEvent.loadFact());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhiskerWisdom',
      theme: FlexThemeData.light(scheme: FlexScheme.amber),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.amber),
      home: const MyHomePage(title: 'WhiskerWisdom'),
    );
  }
}
