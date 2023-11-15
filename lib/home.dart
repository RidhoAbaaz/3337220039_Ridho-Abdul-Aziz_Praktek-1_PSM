import 'package:flutter/material.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  List<String> product = [
    'Teh Botol',
    'Kusuka',
    'indomie',
    'ice cream',
    'cimory',
    'aqua',
    'fresh tea',
    'le mineral',
    'coca cola',
    'chitato'
  ];
  List<int> count = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<String> price = [
    'price Rp.5000',
    'price Rp.6000',
    'price Rp.3000',
    'price Rp.10000',
    'price Rp.10000',
    'price Rp.7000',
    'price Rp.3000',
    'price Rp.5000',
    'price Rp.4000',
    'price Rp.8000',
    'price Rp.5000'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('hallo'),
          ),
          body: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(count[index].toString()),
                  ),
                  title: Text(product[index]),
                  subtitle: Text(price[index]),
                  trailing: Icon(Icons.delete),
                );
              })),
    );
  }
}
