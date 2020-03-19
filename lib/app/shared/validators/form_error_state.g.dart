// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form_error_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FormErrorState on _FormErrorState, Store {
  Computed<bool> _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors)).value;

  final _$attributesAtom = Atom(name: '_FormErrorState.attributes');

  @override
  ObservableMap<dynamic, dynamic> get attributes {
    _$attributesAtom.context.enforceReadPolicy(_$attributesAtom);
    _$attributesAtom.reportObserved();
    return super.attributes;
  }

  @override
  set attributes(ObservableMap<dynamic, dynamic> value) {
    _$attributesAtom.context.conditionallyRunInAction(() {
      super.attributes = value;
      _$attributesAtom.reportChanged();
    }, _$attributesAtom, name: '${_$attributesAtom.name}_set');
  }

  @override
  String toString() {
    final string =
        'attributes: ${attributes.toString()},hasErrors: ${hasErrors.toString()}';
    return '{$string}';
  }
}
