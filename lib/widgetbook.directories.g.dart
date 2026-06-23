// dart format width=80
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_import, prefer_relative_imports, directives_ordering

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AppGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:finance_design_system/use_cases/app_button_use_case.dart'
    as _finance_design_system_use_cases_app_button_use_case;
import 'package:finance_design_system/use_cases/app_card_use_case.dart'
    as _finance_design_system_use_cases_app_card_use_case;
import 'package:finance_design_system/use_cases/app_text_field_use_case.dart'
    as _finance_design_system_use_cases_app_text_field_use_case;
import 'package:widgetbook/widgetbook.dart' as _widgetbook;

final directories = <_widgetbook.WidgetbookNode>[
  _widgetbook.WidgetbookFolder(
    name: 'widgets',
    children: [
      _widgetbook.WidgetbookComponent(
        name: 'AppButton',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Disabled',
            builder: _finance_design_system_use_cases_app_button_use_case
                .disabledButtonUseCase,
          ),
          _widgetbook.WidgetbookUseCase(
            name: 'Primary',
            builder: _finance_design_system_use_cases_app_button_use_case
                .primaryButtonUseCase,
          ),
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'AppCard',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Default',
            builder: _finance_design_system_use_cases_app_card_use_case
                .defaultCardUseCase,
          ),
        ],
      ),
      _widgetbook.WidgetbookComponent(
        name: 'AppTextField',
        useCases: [
          _widgetbook.WidgetbookUseCase(
            name: 'Default',
            builder: _finance_design_system_use_cases_app_text_field_use_case
                .defaultTextFieldUseCase,
          ),
          _widgetbook.WidgetbookUseCase(
            name: 'Error',
            builder: _finance_design_system_use_cases_app_text_field_use_case
                .errorTextFieldUseCase,
          ),
        ],
      ),
    ],
  ),
];
