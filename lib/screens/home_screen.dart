import 'package:flutter/material.dart';
import 'package:lotto_test/providers/data_providers.dart';
import 'package:lotto_test/screens/Resultat_gh_screen.dart';
import 'package:lotto_test/widgets/resultat_gh_item.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  var _isInit = true;
  var _isLoading = false;

  @override
  void didChangeDependencies() {
    if(_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<LottoProvider>(context).fetchAndSetLotto().then((_) {
        setState(() {
          _isLoading = false;
        });
      });
    }

    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lotto'),
      ),

      body: Center(
        child: (_isLoading) 
        ? Text('Loding...') 
        : RaisedButton(
          child: Text('Resultat Ghana'),
          color: Colors.blue,
          textColor: Colors.white,
          onPressed: () => Navigator.of(context).pushNamed(ResultatGhScreen.routeName),
        )
      ),
    );
  }
}