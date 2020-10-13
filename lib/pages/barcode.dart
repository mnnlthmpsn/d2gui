import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mgmt/providers/barcodeProvider.dart';

class BarcodeScreen extends StatelessWidget {

  final inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Barcode Simulator'),),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 80, 20, 0),
        child: ListView(
          children: <Widget>[
            Form(
              child: TextFormField(
                controller: inputController,
                decoration: InputDecoration(
                  hintText: 'Enter string'
                ),
              ),
            ),
            SizedBox(
              width: 200,
              child: FlatButton(
                color: Colors.blue,
                textColor: Colors.white,
                child: Text('Send to Home Screen'),
                onPressed: (){
                  Provider.of<BarcodeModel>(context, listen: false)
                      .getTextFromScanner(inputController.text);
                  Navigator.pop(context);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
