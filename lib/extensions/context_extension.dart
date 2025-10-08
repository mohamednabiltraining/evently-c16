import 'package:evently_c16/l10n/app_localizations.dart';
import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext {
  ColorScheme get appColors => Theme.of(this).colorScheme;
  TextTheme get fonts => Theme.of(this).textTheme;
  AppLocalizations get locals => AppLocalizations.of(this)!;
}
