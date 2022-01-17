import 'package:flutter/material.dart';
import 'package:listviewbilder/rooot.dart';
import 'package:listviewbilder/start_app.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Светофорик',
      initialRoute: '/',
      routes: {
        '/': (context) => const Rooot(),
        '/hend_write': (context) => const SimpleList(),
        '/auto_generate_list': (context) => SimpleListBuilder(),
        '/auto_generate_list_divider': (context) => SimpleListSeparatted(),
        '/ClicListAvtoGenereted': (context) => const ClicListAvtoGenereted(),
      },
    ),
  );
}
