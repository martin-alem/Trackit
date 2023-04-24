import 'package:flutter/material.dart';
import 'package:trackit/screens/add_expense_screen/add_expense_screen.dart';
import 'package:trackit/util/values/dimensions.dart';
import 'package:trackit/util/values/strings.dart';
import '../../widgets/app_bar_title.dart';


class HomeScreen extends StatefulWidget{

  final String title;
  const HomeScreen({super.key, required this.title});

  @override
  State<HomeScreen> createState(){
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(label: widget.title),
        elevation: AppDimensions.appBarElevation,
      ),
      body: Container(
        margin: const EdgeInsets.all(AppDimensions.scaffoldMargin),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { Navigator.push(
            context, MaterialPageRoute(builder: (builder) => const AddExpenseScreen(title: AppStrings.addExpenseScreenTitle))); },
        tooltip: AppStrings.floatingActionTooltip,
        child: const Icon(Icons.add),
      ),
    );
  }
}