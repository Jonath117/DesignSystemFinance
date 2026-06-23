import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:finance_design_system/src/widgets/app_text_field.dart';

@widgetbook.UseCase(
  name: 'Default',
  type: AppTextField,
)
Widget defaultTextFieldUseCase(BuildContext context) {
  return const AppTextField(
    labelText: 'Usuario',
  );
}

@widgetbook.UseCase(
  name: 'Error',
  type: AppTextField,
)
Widget errorTextFieldUseCase(BuildContext context) {
  return const AppTextField(
    labelText: 'Contraseña',
    errorText: 'La contraseña es incorrecta',
  );
}
