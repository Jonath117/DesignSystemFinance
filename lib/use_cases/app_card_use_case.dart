import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:finance_design_system/src/widgets/app_card.dart';

@widgetbook.UseCase(
  name: 'Default',
  type: AppCard,
)
Widget defaultCardUseCase(BuildContext context) {
  return const AppCard(
    child: Text('Este es el contenido de la tarjeta por defecto.'),
  );
}
