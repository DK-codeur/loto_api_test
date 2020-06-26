import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'models/loto.dart';

class LottoProvider with ChangeNotifier{
  final String publicLink = 'http://lotto.onecode.epizy.com/getData.php';

  List<Loto> _lotto = [];
  List<Loto> get lotto {
    return [..._lotto];
  }


  Future<void> fetchAndSetLotto() async {
    final url = publicLink;

    try {
      
      final response = await http.get(url);
      print('get:' + '${response.statusCode}');
      final extractedData = json.decode(response.body);
      print(extractedData);

      if(extractedData == null) {
        return;
      }

      final List<Loto> loadedLotto = [];
      for (var i = 0; i < extractedData.length; i++) {
        var lottoItem = Loto.fromJson(extractedData[i]); 
        loadedLotto.add(lottoItem);
      }

      _lotto = loadedLotto;
      notifyListeners();
      print('instance : $_lotto');

    } catch (error) {
      throw error;
    }
  }
}