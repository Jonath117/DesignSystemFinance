import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:finance_design_system/src/widgets/app_button.dart';

@widgetbook.UseCase(
  name: 'Primary',
  type: AppButton,
)
Widget primaryButtonUseCase(BuildContext context) {
  return AppButton(
    text: 'Guardar',
    onPressed: () {},
  );
}

@widgetbook.UseCase(
  name: 'Disabled',
  type: AppButton,
)
Widget disabledButtonUseCase(BuildContext context) {
  return const AppButton(
    text: 'Deshabilitado',
  );
}
