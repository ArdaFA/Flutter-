import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;
  QuoteCard({required this.quote, required this.delete}); // required is here becuz "https://stackoverflow.com/questions/64560461/the-parameter-cant-have-a-value-of-null-because-of-its-type-in-dart"
  // const QuoteCard({
  //   super.key,
  // });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                quote.text, //we dont need $ here becuz we are not actually outputting this in a String
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[650],
                )
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.grey[800],
              )
            ),
            SizedBox(height: 8.0),
            TextButton.icon(
              onPressed: () {
                delete;
              },
              label: Text('delete this quote'),
              icon: Icon(Icons.delete_outline_sharp),

            )
          ],
        ),
      ),
    );
  }
}