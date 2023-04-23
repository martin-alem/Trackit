import 'package:flutter/material.dart';


class AppBarTitle extends StatelessWidget{

  final String label;
  const AppBarTitle({super.key, required this.label});

  @override
  Widget build(BuildContext context){
    return Text(
      label,
      style: const TextStyle(
        fontWeight: FontWeight.bold
      ),
    );
  }
}