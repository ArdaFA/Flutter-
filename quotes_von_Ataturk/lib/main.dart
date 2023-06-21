import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
    home: QuoteList()
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [

    Quote(' Teachers are the one and only people who save nations ','Atatürk'),
    Quote(' Our true mentor in life is science ','Atatürk'),
    Quote(' The biggest battle is the war against ignorance ','Atatürk'),
    Quote('Peace at home, peace in World', 'Atatürk'),

  ];

  // Widget quoteTemplate(quote){
  //   return QuoteCard(quote: quote); //normally here is new keyword, but its not necessary in new version of flutter
  // }

  List<String> authors = [''];

  @override
  Widget build(BuildContext context) {
    return Scaffold( // what was the "const" in here????
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent[200],
        ),
        body: Column(
          children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: () { // we defined a delete parameter to use it in quote_card constructor
              setState(() {
                quotes.remove(quote);
              });
            }
          )).toList(),
        )
    );
  }
}

















// children: quotes.map((quote) {
// return Text('${quote.text} - ${quote.author}');
// }).toList(),