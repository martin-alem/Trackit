import 'package:flutter/material.dart';
import 'package:trackit/util/values/dimensions.dart';
import 'package:trackit/widgets/app_bar_title.dart';


class AddExpenseScreen extends StatefulWidget{

  final String title;
  const AddExpenseScreen({super.key, required this.title});

  @override
  State<AddExpenseScreen> createState(){
    return _AddExpenseScreenState();
  }
}

class _AddExpenseScreenState extends State<AddExpenseScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(label: widget.title),
        elevation: AppDimensions.appBarElevation,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
      ),

    );
  }
}