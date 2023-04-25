import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List <Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'The greatest glory is in rising every time we fall'),
    Quote(author: 'Oscar Wilde', text: 'The way to get started is to quit talking and begin doing'),
    Quote(author: 'Oscar Wilde', text: 'Time is limited, so don\'t waste it living someone else\'s life')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(),
      ),
    );
  }
}




