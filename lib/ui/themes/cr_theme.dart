import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class CRTheme extends InheritedWidget {
  const CRTheme({
    required super.child,
    required this.data,
    super.key,
  });

  final CRThemeData data;

  @override
  bool updateShouldNotify(CRTheme old) => data != old.data;

  static CRThemeData of(BuildContext context) {
    final result = context.dependOnInheritedWidgetOfExactType<CRTheme>();
    assert(result != null, 'CRTheme not found in context');
    return result!.data;
  }
}

class CRThemeData extends Equatable {
  const CRThemeData({
    required this.sheetPillColor,
    required this.loadingIndicatorColor,
  });

  final Color sheetPillColor;

  final Color loadingIndicatorColor;

  @override
  List<Object?> get props => [sheetPillColor, loadingIndicatorColor];
}
