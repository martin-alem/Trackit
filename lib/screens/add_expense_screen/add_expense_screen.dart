import 'package:flutter/material.dart';
import 'package:trackit/screens/add_expense_screen/widgets/form_container.dart';
import 'package:trackit/util/values/dimensions.dart';
import 'package:trackit/util/values/strings.dart';
import 'package:trackit/widgets/app_bar_title.dart';

class AddExpenseScreen extends StatelessWidget{

  final String title;
  const AddExpenseScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: AppBarTitle(label: title),
        elevation: AppDimensions.appBarElevation,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(AppDimensions.scaffoldMargin),
          width: double.infinity,
          child: Column(
            children:  <Widget>[
              Container(
                margin: const EdgeInsets.symmetric(vertical: AppDimensions.defaultVerticalMargin),
                child: const Text(
                  "Create a new expense",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: AppDimensions.defaultHeadingFontSize,
                  ),
                ),
              ),
              const FormContainer(),
              Container(
                margin: const EdgeInsets.symmetric(vertical: AppDimensions.defaultVerticalMargin),
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: (){},
                  icon: const Icon(Icons.save),
                  label: const Text(
                    AppStrings.saveExpenseButtonText,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}