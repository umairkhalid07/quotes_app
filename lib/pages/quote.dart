import 'package:flutter/material.dart';

class Quote {
  String text = '';
  String speaker = '';
  String movie = '';

  Quote({required String speaker, required String movie, required String text}){
    this.text = text;
    this.speaker = speaker;
    this.movie = movie;
  }
}