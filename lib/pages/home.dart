import 'package:flutter/material.dart';
import 'package:state_mgmt/pages/barcode.dart';
import 'package:state_mgmt/providers/barcodeProvider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {

  final textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<BarcodeModel>(
      builder: (context, provider, child){
        textFieldController.text = provider.stream;
        return Scaffold(
          appBar: AppBar(
            title: Text('Home Screen'),
          ),
          body: Padding(
            padding: EdgeInsets.fromLTRB(20, 80, 20, 0),
            child: ListView(
              children: <Widget>[
                Form(
                  child: TextFormField(
                    controller: textFieldController,
                    decoration: InputDecoration(
                      labelText: 'Text from Barcode'
                    ),
                  ),
                ),
                FlatButton(
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: (){},
                  child: Text('Continue with what you do'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => BarcodeScreen()
                    ));
                  },
                  child: Center(
                    child: Text(
                        'Barcode Scanner'
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
