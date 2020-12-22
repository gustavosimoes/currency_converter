import 'package:conversor/app/components/converter_box.dart';
import 'package:conversor/app/controller/home_controller.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController toText = TextEditingController();

  final TextEditingController fromText = TextEditingController();

  HomeController homeController;

  void initState() {
    super.initState();
    homeController = HomeController(toText: toText, fromText: fromText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 150, left: 15, right: 15, bottom: 25),
          child: Column(
            children: [
              Image.asset(
                'assets/images/money-currency.png',
                width: 150,
                height: 150,
              ),
              ConverterBox(
                selectedItem: homeController.toCurrency,
                controller: toText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.toCurrency = model;
                  });
                },
              ),
              ConverterBox(
                selectedItem: homeController.fromCurrency,
                controller: fromText,
                items: homeController.currencies,
                onChanged: (model) {
                  setState(() {
                    homeController.fromCurrency = model;
                  });
                },
              ),
              SizedBox(height: 40),
              RaisedButton(
                textColor: Colors.black,
                color: Colors.greenAccent[400],
                child: Text('CONVERTER'),
                onPressed: () {
                  homeController.convert();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
