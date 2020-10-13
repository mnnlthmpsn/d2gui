import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_mgmt/pages/home.dart';
import 'package:state_mgmt/providers/barcodeProvider.dart';

void main(){
  runApp(
    ChangeNotifierProvider(
      create: (_) => BarcodeModel(),
      child: MaterialApp(
        title: 'State Mgmt',
        home: HomeScreen(),
      ),
    ),
  );
}