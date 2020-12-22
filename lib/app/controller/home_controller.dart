import 'package:conversor/app/models/converter_model.dart';
import 'package:flutter/widgets.dart';

class HomeController {
  List<ConverterModel> currencies;

  final TextEditingController toText;
  final TextEditingController fromText;

  ConverterModel toCurrency;
  ConverterModel fromCurrency;

  HomeController({this.toText, this.fromText}) {
    currencies = ConverterModel.getCurrencies();
    toCurrency = currencies.first;
    fromCurrency = currencies.elementAt(1);
  }

  void convert() {
    String text = toText.text;
    double value = double.parse(text.replaceAll(',', '.'));
    double ans = 0;

    switch (fromCurrency.name) {
      case 'Real':
        ans = value * toCurrency.real;
        break;
      case 'Dolar':
        ans = value * toCurrency.dolar;
        break;
      case 'Euro':
        ans = value * toCurrency.euro;
        break;
      case 'Bitcoin':
        ans = value * toCurrency.bitcoin;
        break;
      default:
        break;
    }

    fromText.text = ans.toStringAsFixed(2).replaceAll('.', ',');
  }
}
