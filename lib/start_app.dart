import 'dart:math';

import 'package:flutter/material.dart';

class ListFloss extends StatelessWidget {
  const ListFloss({Key? key, required this.number}) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.indigo,
        border: Border.all(),
      ),
      child: InkWell(
        onTap: () {},
        child: Text(
          "Элемент $number",
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}

class ListPhoneBook extends StatelessWidget {
  List<User> listUser;

  ListPhoneBook({Key? key, required this.listUser, required this.index})
      : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.indigo,
        border: Border.all(),
      ),
      child: InkWell(
        onTap: () {
          final snackBar = const SnackBar(
            content: Text('Clic!'),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: Row(
          children: [
            Expanded(
              child: Text(
                "☎ ${listUser[index].phone}",
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Text(
                "👶 ${listUser[index].name}",
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//рукаписный лист
class SimpleList extends StatelessWidget {
  const SimpleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListFloss(number: 1),
          ListFloss(number: 2),
          ListFloss(number: 3),
          ListFloss(number: 4),
          ListFloss(number: 5),
          ListFloss(number: 6),
          ListFloss(number: 7),
          ListFloss(number: 8),
          ListFloss(number: 9),
          ListFloss(number: 10),
          ListFloss(number: 11),
          ListFloss(number: 12),
          ListFloss(number: 13),
          ListFloss(number: 14),
        ],
      ),
    );
  }
}

// автогенерируемый лист
class SimpleListBuilder extends StatelessWidget {
  SimpleListBuilder({Key? key}) : super(key: key);
  int counter = 0;
  List<User> listuser = [
    User(name: 'Pety', phone: '8111111111'),
    User(name: 'Katy', phone: '8222222222'),
    User(name: 'Masha', phone: '8333333333'),
    User(name: 'Vasy', phone: '8444444444'),
    User(name: 'Lena', phone: '8555555555'),
    User(name: 'Dasha', phone: '8666666666'),
    User(name: 'Dyra', phone: '8777777777'),
    User(name: 'Lyka', phone: '8888888888'),
    User(name: 'Myka', phone: '8999999999'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: listuser.length, //предел массива
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
                child: ListPhoneBook(listUser: listuser, index: index));
          }),
    );
  }
}
// автогенерируемый список с разделителями в данном случае полосочкой

class SimpleListSeparatted extends StatelessWidget {
  SimpleListSeparatted({Key? key}) : super(key: key);

  var list = List<int>.generate(50, (index) => index + 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        padding: const EdgeInsets.all(8),
        itemCount: list.length, //предел массива ленгч
        itemBuilder: (BuildContext context, int index) {
          return ListFloss(number: index);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          thickness: 3,
          color: Colors.red,
        ),
      ),
    );
  }
}

//кликабельный список
class ClicListAvtoGenereted extends StatefulWidget {
  const ClicListAvtoGenereted({Key? key}) : super(key: key);

  @override
  _ClicListAvtoGeneretedState createState() => _ClicListAvtoGeneretedState();
}

class _ClicListAvtoGeneretedState extends State<ClicListAvtoGenereted> {
  int? _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('Item $index'),
            selected: index == _selectedIndex,
            onTap: () {
              setState(() {
                _selectedIndex = index;
              });
            },
          );
        },
      ),
    );
  }
}

class User {
  String name;
  String phone;

  User({required this.name, required this.phone});
}
