class ConverterModel {
  final String name;
  final double real;
  final double euro;
  final double dolar;
  final double bitcoin;

  ConverterModel({this.name, this.real, this.euro, this.dolar, this.bitcoin});

  static List<ConverterModel> getCurrencies() {
    return <ConverterModel>[
      ConverterModel(
          name: 'Real', real: 1, dolar: 0.18, euro: 0.15, bitcoin: 0.000016),
      ConverterModel(
          name: 'Dolar', real: 5.65, dolar: 1, euro: 0.85, bitcoin: 0.000088),
      ConverterModel(
          name: 'Euro', real: 6.62, dolar: 1.17, euro: 1, bitcoin: 0.00010),
      ConverterModel(
          name: 'Bitcoin',
          real: 64116.51,
          dolar: 11351.3,
          euro: 9689.54,
          bitcoin: 1),
    ];
  }
}
