import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:trackit/util/values/integers.dart';
import 'package:trackit/util/values/strings.dart';
import 'package:trackit/widgets/drop_down_form.dart';
import 'package:trackit/widgets/input_text_field.dart';

class FormContainer extends StatefulWidget {
  const FormContainer({super.key});

  @override
  State<FormContainer> createState() {
    return _FormContainerState();
  }
}

class _FormContainerState extends State<FormContainer> {
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            const InputTextField(
                hintText: AppStrings.expenseAmountInputTitleHint,
                labelText: AppStrings.expenseAmountInputLabelText,
                prefixIcon: Icon(Icons.attach_money),
                inputType: TextInputType.number),
            const InputTextField(
              hintText: AppStrings.expenseFormInputTitleHint,
              labelText: AppStrings.expenseFormInputLabelText,
              prefixIcon: Icon(Icons.edit),
              inputType: TextInputType.text,
              maxLength: AppIntegers.expenseFormInputMaxLength,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
            ),
            const InputTextField(
              hintText: AppStrings.expenseDescriptionInputHint,
              labelText: AppStrings.expenseDescriptionInputLabelText,
              prefixIcon: Icon(Icons.edit),
              inputType: TextInputType.multiline,
              maxLength: AppIntegers.expenseFormInputMaxLength,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
            ),
            DropDownFormField(
              items: AppStrings.expenseCategory,
              handleOnChange: (String? item) {},
            )
          ],
        ));
  }
}
