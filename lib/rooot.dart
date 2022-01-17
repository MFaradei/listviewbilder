import 'package:flutter/material.dart';
import 'package:listviewbilder/drooo.dart';

class Rooot extends StatefulWidget {
  const Rooot({Key? key}) : super(key: key);

  @override
  _RoootState createState() => _RoootState();
}

class _RoootState extends State<Rooot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('не Светофорик'),
        actions: <Widget>[
          ElevatedButton(
            child: Text('Кнопка'),
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                    'Кнопка для того чтоб выполнить условие п.3 кейса 2.3'))),
          ),
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'Go to the next page',
            onPressed: () =>
                Navigator.pushNamed(context, '/auto_generate_list'),
          ),
        ],
      ),
      drawer: const Drooo(),
      body: Center(
        child: Icon(Icons.list_alt),
      ),
    );
  }
}
