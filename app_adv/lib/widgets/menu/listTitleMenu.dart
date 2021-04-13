import 'package:flutter/material.dart';

class ListTitleMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Menu",
        style: Theme.of(context).textTheme.headline6,
      ),
      onTap: () => Navigator.popUntil(context, ModalRoute.withName('/menu')),
    );
  }
}
