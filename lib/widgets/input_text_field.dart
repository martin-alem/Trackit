import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trackit/util/values/dimensions.dart';

class InputTextField extends StatefulWidget {
  final Icon prefixIcon;
  final String labelText;
  final String hintText;
  final TextInputType inputType;
  final int? maxLength;
  final MaxLengthEnforcement? maxLengthEnforcement;

  const InputTextField(
      {super.key,
      required this.prefixIcon,
      required this.labelText,
      required this.hintText,
      required this.inputType,
      this.maxLength,
      this.maxLengthEnforcement});

  @override
  State<InputTextField> createState(){
    return _InputTextField();
  }
}

class _InputTextField extends State<InputTextField>{

  late TextEditingController _inputTextController;

  @override
  void initState() {
    _inputTextController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Container(
      margin: const EdgeInsets.symmetric(vertical: AppDimensions.inputTextVerticalMargin),
      child: TextFormField(
        controller: _inputTextController,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: widget.hintText,
          labelText: widget.labelText,
          prefixIcon: widget.prefixIcon,
        ),
        maxLines: null,
        keyboardType: widget.inputType,
        maxLength: widget.maxLength,
        maxLengthEnforcement: widget.maxLengthEnforcement,
      ),
    );
  }
}
