import 'package:calculadora_conversion/widgets/custom_menu_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  String selectedItem = 'Decimal';
  String selectedItem2 = 'Binario';
  List<String> items = ['Binario', 'Octal', 'Decimal', 'Hexadecimal'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Conversor de unidades'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(17, 40, 12, 0),
              child: Text('Escoge de que base a cual base quieres convertir.'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomMenuButton(
                  selectedItem: selectedItem,
                  items: items,
                  onItemSelected: (String text) {
                    setState(() {
                      selectedItem = text;
                      
                    });
                  },
                ),
                CustomMenuButton(
                  selectedItem: selectedItem2,
                  items: items,
                  onItemSelected: (String text) {
                    setState(() {
                      selectedItem2 = text;
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
