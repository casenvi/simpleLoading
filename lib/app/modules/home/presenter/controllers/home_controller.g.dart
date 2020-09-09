// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$savingAtom = Atom(name: '_HomeControllerBase.saving');

  @override
  bool get saving {
    _$savingAtom.reportRead();
    return super.saving;
  }

  @override
  set saving(bool value) {
    _$savingAtom.reportWrite(value, super.saving, () {
      super.saving = value;
    });
  }

  final _$checkboxListTitleAtom =
      Atom(name: '_HomeControllerBase.checkboxListTitle');

  @override
  bool get checkboxListTitle {
    _$checkboxListTitleAtom.reportRead();
    return super.checkboxListTitle;
  }

  @override
  set checkboxListTitle(bool value) {
    _$checkboxListTitleAtom.reportWrite(value, super.checkboxListTitle, () {
      super.checkboxListTitle = value;
    });
  }

  final _$switchListTileAtom = Atom(name: '_HomeControllerBase.switchListTile');

  @override
  bool get switchListTile {
    _$switchListTileAtom.reportRead();
    return super.switchListTile;
  }

  @override
  set switchListTile(bool value) {
    _$switchListTileAtom.reportWrite(value, super.switchListTile, () {
      super.switchListTile = value;
    });
  }

  final _$textFieldAtom = Atom(name: '_HomeControllerBase.textField');

  @override
  String get textField {
    _$textFieldAtom.reportRead();
    return super.textField;
  }

  @override
  set textField(String value) {
    _$textFieldAtom.reportWrite(value, super.textField, () {
      super.textField = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void invertSaving() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.invertSaving');
    try {
      return super.invertSaving();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void invertCheckboxListTile() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.invertCheckboxListTile');
    try {
      return super.invertCheckboxListTile();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void invertSwitchListTile() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.invertSwitchListTile');
    try {
      return super.invertSwitchListTile();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeTextField(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeTextField');
    try {
      return super.changeTextField(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
saving: ${saving},
checkboxListTitle: ${checkboxListTitle},
switchListTile: ${switchListTile},
textField: ${textField}
    ''';
  }
}
