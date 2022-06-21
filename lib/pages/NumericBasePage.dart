import 'package:flutter/material.dart';

class NumericBasePage extends StatefulWidget {
  const NumericBasePage({Key? key}) : super(key: key);

  @override
  State<NumericBasePage> createState() => _NumericBasePageState();
}

class _NumericBasePageState extends State<NumericBasePage> {
  String _textHexadecimal = "";
  String _textDecimal = "";
  String _textBinary = "";
  String _textOctal = "";

  late TextEditingController _controllerHexadecimal;
  late TextEditingController _controllerDecimal;
  late TextEditingController _controllerBinary;
  late TextEditingController _controllerOctal;

  void chageTextHexadecimal(String textHexadecimal) {
    if (textHexadecimal.isNotEmpty) {
      _textDecimal = int.parse(textHexadecimal, radix: 16).toString();
      _textBinary = int.parse(textHexadecimal, radix: 16).toRadixString(2);
      _textOctal = int.parse(textHexadecimal, radix: 16).toRadixString(8);
    } else {
      _textDecimal = "";
      _textBinary = "";
      _textOctal = "";
    }
    _controllerDecimal = TextEditingController(text: _textDecimal);
    _controllerBinary = TextEditingController(text: _textBinary);
    _controllerOctal = TextEditingController(text: _textOctal);
  }

  void chageTextDecimal(String textDecimal) {
    if (textDecimal.isNotEmpty) {
      _textHexadecimal = int.parse(textDecimal).toRadixString(16);
      _textBinary = int.parse(textDecimal).toRadixString(2);
      _textOctal = int.parse(textDecimal).toRadixString(8);
    } else {
      _textHexadecimal = "";
      _textBinary = "";
      _textOctal = "";
    }
    _controllerHexadecimal = TextEditingController(text: _textHexadecimal);
    _controllerBinary = TextEditingController(text: _textBinary);
    _controllerOctal = TextEditingController(text: _textOctal);
  }

  void chageTextBinary(String textBinary) {
    if (textBinary.isNotEmpty) {
      _textHexadecimal = int.parse(textBinary, radix: 2).toRadixString(16);
      _textDecimal = int.parse(textBinary, radix: 2).toString();
      _textOctal = int.parse(textBinary, radix: 2).toRadixString(8);
    } else {
      _textHexadecimal = "";
      _textDecimal = "";
      _textOctal = "";
    }
    _controllerHexadecimal = TextEditingController(text: _textHexadecimal);
    _controllerDecimal = TextEditingController(text: _textDecimal);
    _controllerOctal = TextEditingController(text: _textOctal);
  }

  void chageTextOctal(String textOctal) {
    if (textOctal.isNotEmpty) {
      _textHexadecimal = int.parse(textOctal, radix: 8).toRadixString(16);
      _textDecimal = int.parse(textOctal, radix: 8).toString();
      _textBinary = int.parse(textOctal, radix: 8).toRadixString(2);
    } else {
      _textHexadecimal = "";
      _textDecimal = "";
      _textBinary = "";
    }
    _controllerHexadecimal = TextEditingController(text: _textHexadecimal);
    _controllerDecimal = TextEditingController(text: _textDecimal);
    _controllerBinary = TextEditingController(text: _textBinary);
  }

  @override
  void initState() {
    super.initState();

    _controllerHexadecimal = TextEditingController(text: _textHexadecimal);
    _controllerDecimal = TextEditingController(text: _textDecimal);
    _controllerBinary = TextEditingController(text: _textBinary);
    _controllerOctal = TextEditingController(text: _textOctal);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //caja para introducir texto
            TextField(
              controller: _controllerHexadecimal,
              decoration: const InputDecoration(
                labelText: 'Hexadecimal',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _textHexadecimal = value;
                  chageTextHexadecimal(_textHexadecimal);
                });
              },
            ),
            TextField(
              controller: _controllerDecimal,
              decoration: const InputDecoration(
                labelText: 'Decimal',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _textDecimal = value;
                  chageTextDecimal(_textDecimal);
                });
              },
            ),
            TextField(
              controller: _controllerBinary,
              decoration: const InputDecoration(
                labelText: 'Binary',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _textBinary = value;
                  chageTextBinary(_textBinary);
                });
              },
            ),
            TextField(
              controller: _controllerOctal,
              decoration: const InputDecoration(
                labelText: 'Octal',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _textOctal = value;
                  chageTextOctal(_textOctal);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
