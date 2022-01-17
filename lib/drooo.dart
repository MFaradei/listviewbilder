import 'package:flutter/material.dart';

class Drooo extends StatelessWidget {
  const Drooo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0, -1),
                  end: Alignment(0, 0),
                  colors: [Colors.red, Colors.yellow, Colors.green],
                ),
              ),
              child: Container(
                child: Image.network(
                    'https://i1.sndcdn.com/artworks-JuW7JQg2MiC76uG0-u8mqWA-t500x500.jpg'),
                height: 50,
              )),
          ListTile(
            leading: const Icon(
              Icons.ac_unit,
              color: Colors.red,
            ),
            title: Text('рукаписный лист'),
            onTap: () {
              Navigator.pushNamed(context, '/hend_write');
            },
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            leading: const Icon(
              Icons.ac_unit,
              color: Colors.yellow,
            ),
            title: Text('автогенерируемый лист'),
            onTap: () {
              Navigator.pushNamed(context, '/auto_generate_list');
            },
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            leading: const Icon(
              Icons.ac_unit,
              color: Colors.green,
            ),
            title: Text(
                'автогенерируемый список с разделителями в данном случае полосочкой'),
            onTap: () {
              Navigator.pushNamed(context, '/auto_generate_list_divider');
            },
          ),
          Divider(
            thickness: 2,
          ),
          ListTile(
            leading: const Icon(
              Icons.ac_unit,
              color: Colors.blue,
            ),
            title: Text('кликабельный список'),
            onTap: () {
              Navigator.pushNamed(context, '/ClicListAvtoGenereted');
            },
          )
        ],
      ),
    );
  }
}
