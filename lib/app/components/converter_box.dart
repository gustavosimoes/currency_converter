import 'package:conversor/app/models/converter_model.dart';
import 'package:flutter/material.dart';

class ConverterBox extends StatelessWidget {
  final List<ConverterModel> items;
  final ConverterModel selectedItem;
  final TextEditingController controller;
  final void Function(ConverterModel) onChanged;

  const ConverterBox(
      {Key key, this.items, this.controller, this.onChanged, this.selectedItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 56,
            child: DropdownButton<ConverterModel>(
                isExpanded: true,
                value: selectedItem,
                underline: Container(
                  height: 1,
                  color: Colors.amber,
                ),
                items: items
                    .map((e) => DropdownMenuItem(value: e, child: Text(e.name)))
                    .toList(),
                onChanged: onChanged),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 2,
          child: SizedBox(
            height: 56,
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
