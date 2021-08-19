import 'package:flutter/material.dart';
import 'package:qoutes_app/pages/loading.dart';
import 'package:qoutes_app/pages/home.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home' : (context) => Home(),
  },
));