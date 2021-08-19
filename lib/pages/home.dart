import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Quote> quotes = [
    Quote(movie: 'The Dark Knight',
        speaker: 'Harvey Dent',
        text: 'You either die a hero or you live long enough to see yourself become the villain'),
    Quote(movie: 'Game of Thrones',
        speaker: 'Tywin Lannister',
        text: 'A lion doesnt concern himself with the opinions of a sheep'),
    Quote(movie: 'Harry Potter',
        speaker: 'Albus Dumbledore',
        text: 'But you know, happiness can be found even in the darkest of times, if one only remembers to turn on the light'),
    Quote(movie: 'Dark Knight Rises',
        speaker: 'Batman',
        text: 'A hero can be anyone, even a man doing something as simple and reassuring as putting a coat around a young boy shoulders to let him know the world hadnt ended'),
    Quote(movie: 'The Lion King',
        speaker: 'Mufasa',
        text: 'We are all connected in the great circle of life')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Best Movie Quotes    ', style: TextStyle(color: Colors.white, fontSize: 20)
              ),
              WidgetSpan(
                child: Icon(Icons.chat_bubble_outlined, size: 20),
              ),
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: quotes.map((quote) =>
            QuoteCard(
                quote: quote,
            )).toList(),
      ),
    );
  }
}
