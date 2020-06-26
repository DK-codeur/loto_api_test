import 'package:flutter/material.dart';
import 'package:lotto_test/providers/data_providers.dart';
import 'package:lotto_test/widgets/resultat_gh_item.dart';
import 'package:provider/provider.dart';

class ResultatGhScreen extends StatefulWidget {
  static const routeName = '/resultatGh';  

  ResultatGhScreen({Key key}) : super(key: key);

  @override
  _ResultatGhScreenState createState() => _ResultatGhScreenState();
}

class _ResultatGhScreenState extends State<ResultatGhScreen> {

  Future refreshData(BuildContext context) async {
    await Provider.of<LottoProvider>(context).fetchAndSetLotto();
  }

  @override
  Widget build(BuildContext context) {

    final lotto = Provider.of<LottoProvider>(context).lotto;

    return Scaffold(
       appBar: AppBar(
          title: Text('Resultat Ghana'),
       ),

        body: RefreshIndicator(
          onRefresh: () => refreshData(context),
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: ListView.builder(
              itemCount: lotto.length,
              itemBuilder: (ctx, i) => ChangeNotifierProvider.value(
                value: lotto[i],
                child: ResultatGhItem(),
              ),
            ),
          )
        ),
    );
  }
}