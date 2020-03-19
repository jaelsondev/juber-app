// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignupController on _SignupControllerBase, Store {
  Computed<bool> _$canSignupComputed;

  @override
  bool get canSignup =>
      (_$canSignupComputed ??= Computed<bool>(() => super.canSignup)).value;

  final _$nameAtom = Atom(name: '_SignupControllerBase.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_SignupControllerBase.email');

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

  final _$passwordAtom = Atom(name: '_SignupControllerBase.password');

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

  final _$confirmPasswordAtom =
      Atom(name: '_SignupControllerBase.confirmPassword');

  @override
  String get confirmPassword {
    _$confirmPasswordAtom.context.enforceReadPolicy(_$confirmPasswordAtom);
    _$confirmPasswordAtom.reportObserved();
    return super.confirmPassword;
  }

  @override
  set confirmPassword(String value) {
    _$confirmPasswordAtom.context.conditionallyRunInAction(() {
      super.confirmPassword = value;
      _$confirmPasswordAtom.reportChanged();
    }, _$confirmPasswordAtom, name: '${_$confirmPasswordAtom.name}_set');
  }

  final _$showPasswordAtom = Atom(name: '_SignupControllerBase.showPassword');

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

  final _$showConfirmPasswordAtom =
      Atom(name: '_SignupControllerBase.showConfirmPassword');

  @override
  bool get showConfirmPassword {
    _$showConfirmPasswordAtom.context
        .enforceReadPolicy(_$showConfirmPasswordAtom);
    _$showConfirmPasswordAtom.reportObserved();
    return super.showConfirmPassword;
  }

  @override
  set showConfirmPassword(bool value) {
    _$showConfirmPasswordAtom.context.conditionallyRunInAction(() {
      super.showConfirmPassword = value;
      _$showConfirmPasswordAtom.reportChanged();
    }, _$showConfirmPasswordAtom,
        name: '${_$showConfirmPasswordAtom.name}_set');
  }

  final _$loadingAtom = Atom(name: '_SignupControllerBase.loading');

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

  final _$signupAsyncAction = AsyncAction('signup');

  @override
  Future<void> signup() {
    return _$signupAsyncAction.run(() => super.signup());
  }

  final _$_SignupControllerBaseActionController =
      ActionController(name: '_SignupControllerBase');

  @override
  void setName(String value) {
    final _$actionInfo = _$_SignupControllerBaseActionController.startAction();
    try {
      return super.setName(value);
    } finally {
      _$_SignupControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_SignupControllerBaseActionController.startAction();
    try {
      return super.setEmail(value);
    } finally {
      _$_SignupControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String value) {
    final _$actionInfo = _$_SignupControllerBaseActionController.startAction();
    try {
      return super.setPassword(value);
    } finally {
      _$_SignupControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setConfirmPassword(String value) {
    final _$actionInfo = _$_SignupControllerBaseActionController.startAction();
    try {
      return super.setConfirmPassword(value);
    } finally {
      _$_SignupControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setShowPassword() {
    final _$actionInfo = _$_SignupControllerBaseActionController.startAction();
    try {
      return super.setShowPassword();
    } finally {
      _$_SignupControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setShowConfirmPassword() {
    final _$actionInfo = _$_SignupControllerBaseActionController.startAction();
    try {
      return super.setShowConfirmPassword();
    } finally {
      _$_SignupControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateName(String value) {
    final _$actionInfo = _$_SignupControllerBaseActionController.startAction();
    try {
      return super.validateName(value);
    } finally {
      _$_SignupControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateEmail(String value) {
    final _$actionInfo = _$_SignupControllerBaseActionController.startAction();
    try {
      return super.validateEmail(value);
    } finally {
      _$_SignupControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validatePassword(String value) {
    final _$actionInfo = _$_SignupControllerBaseActionController.startAction();
    try {
      return super.validatePassword(value);
    } finally {
      _$_SignupControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateConfirmPassword(String value) {
    final _$actionInfo = _$_SignupControllerBaseActionController.startAction();
    try {
      return super.validateConfirmPassword(value);
    } finally {
      _$_SignupControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'name: ${name.toString()},email: ${email.toString()},password: ${password.toString()},confirmPassword: ${confirmPassword.toString()},showPassword: ${showPassword.toString()},showConfirmPassword: ${showConfirmPassword.toString()},loading: ${loading.toString()},canSignup: ${canSignup.toString()}';
    return '{$string}';
  }
}
