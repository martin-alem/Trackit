import 'package:flutter/material.dart';

import '../util/values/dimensions.dart';

class DropDownFormField extends StatefulWidget{

  final List<String> items;
  final void Function(String? item) handleOnChange;
  const DropDownFormField({super.key, required this.items, required this.handleOnChange});

  @override
  State<DropDownFormField>createState(){
    return _DropDownFormFieldState();
  }
}

class _DropDownFormFieldState extends State<DropDownFormField>{

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: AppDimensions.inputTextVerticalMargin),
      child: DropdownButtonFormField(
        items: widget.items.map((item) {
          return DropdownMenuItem<String>(value: item, child: Text(item));
        }).toList(),
        value: widget.items.first,
        onChanged: widget.handleOnChange,
        isExpanded: true,
        decoration: const InputDecoration(
          border: OutlineInputBorder()
        ),
      ),
    );
  }
}