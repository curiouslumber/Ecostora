import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xff128C7E),
            ),
            child: Text(
              '',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text('Option 1'),
            onTap: () {
              // Add your code here for Option 1
            },
          ),
          ListTile(
            title: const Text('Option 2'),
            onTap: () {
              // Add your code here for Option 2
            },
          ),
        ],
      ),
    );
  }
}
