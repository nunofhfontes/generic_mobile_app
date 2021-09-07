import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePageDrawer extends StatelessWidget {
  const HomePageDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Color(0xFF9AC433)),
            child: Text('Definitions'),
          ),
          ListTile(
            title: Text('toggle appBar'),
            onTap: () {},
          ),
          ListTile(
            title: Text('toggle Theme'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}