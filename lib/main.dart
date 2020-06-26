import 'package:flutter/material.dart';
import 'package:lotto_test/providers/data_providers.dart';
import 'package:lotto_test/screens/Resultat_gh_screen.dart';
import 'package:lotto_test/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => new LottoProvider(),
      child: MaterialApp(
        title: 'Lotto',
        theme: ThemeData(
          
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),

        routes: {
          ResultatGhScreen.routeName: (ctx) => ResultatGhScreen()
        }
      ),
    );
  }
}
