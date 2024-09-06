import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterblocapiintegration/products/product_bloc.dart';

import 'HomeScreen.dart';
import 'MyHttpOverrides.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(MultiBlocProvider(
    providers: [
      BlocProvider<ProductBloc>(
        create: (BuildContext context) => ProductBloc()..add(LoadData()), // .. ette kodukananenkil button click or event illathe thanne dataye load cheyam.
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      home: HomeScreen(),
    );
  }
}

