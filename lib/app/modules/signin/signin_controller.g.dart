// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SigninController on _SigninControllerBase, Store {
  Computed<bool> _$canSigninComputed;

  @override
  bool get canSignin =>
      (_$canSigninComputed ??= Computed<bool>(() => super.canSignin)).value;

  final _$emailAtom = Atom(name: '_SigninControllerBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$passwordAtom = Atom(name: '_SigninControllerBase.password');

  @override
  String get password {
    _$passwordAtom.context.enforceReadPolicy(_$passwordAtom);
    _$passwordAtom.reportObserved();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.context.conditionallyRunInAction(() {
      super.password = value;
      _$passwordAtom.reportChanged();
    }, _$passwordAtom, name: '${_$passwordAtom.name}_set');
  }

  final _$showPasswordAtom = Atom(name: '_SigninControllerBase.showPassword');

  @override
  bool get showPassword {
    _$showPasswordAtom.context.enforceReadPolicy(_$showPasswordAtom);
    _$showPasswordAtom.reportObserved();
    return super.showPassword;
  }

  @override
  set showPassword(bool value) {
    _$showPasswordAtom.context.conditionallyRunInAction(() {
      super.showPassword = value;
      _$showPasswordAtom.reportChanged();
    }, _$showPasswordAtom, name: '${_$showPasswordAtom.name}_set');
  }

  final _$loadingAtom = Atom(name: '_SigninControllerBase.loading');

  @override
  bool get loading {
    _$loadingAtom.context.enforceReadPolicy(_$loadingAtom);
    _$loadingAtom.reportObserved();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.context.conditionallyRunInAction(() {
      super.loading = value;
      _$loadingAtom.reportChanged();
    }, _$loadingAtom, name: '${_$loadingAtom.name}_set');
  }

  final _$signinAsyncAction = AsyncAction('signin');

  @override
  Future<void> signin() {
    return _$signinAsyncAction.run(() => super.signin());
  }

  final _$_SigninControllerBaseActionController =
      ActionController(name: '_SigninControllerBase');

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_SigninControllerBaseActionController.startAction();
    try {
      return super.setEmail(value);
    } finally {
      _$_SigninControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_SigninControllerBaseActionController.startAction();
    try {
      return super.setPassword(value);
    } finally {
      _$_SigninControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setShowPassword() {
    final _$actionInfo = _$_SigninControllerBaseActionController.startAction();
    try {
      return super.setShowPassword();
    } finally {
      _$_SigninControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateEmail(String value) {
    final _$actionInfo = _$_SigninControllerBaseActionController.startAction();
    try {
      return super.validateEmail(value);
    } finally {
      _$_SigninControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword(String value) {
    final _$actionInfo = _$_SigninControllerBaseActionController.startAction();
    try {
      return super.validatePassword(value);
    } finally {
      _$_SigninControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'email: ${email.toString()},password: ${password.toString()},showPassword: ${showPassword.toString()},loading: ${loading.toString()},canSignin: ${canSignin.toString()}';
    return '{$string}';
  }
}
