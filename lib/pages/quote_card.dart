import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  QuoteCard({ required this.quote});

  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.grey[200],
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                '~ ' + quote.speaker + ", " + quote.movie,
                style: TextStyle(
                  fontSize: 13.0,
                  color: Colors.grey[900],
                ),
              ),
            ],
          ),
        )
    );
  }
}