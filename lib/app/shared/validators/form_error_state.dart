import 'package:mobx/mobx.dart';

part 'form_error_state.g.dart';

class FormErrorState = _FormErrorState with _$FormErrorState;

abstract class _FormErrorState with Store {
  @observable
  ObservableMap attributes = ObservableMap<String, dynamic>.of({});

  @computed
  bool get hasErrors {
    bool flag = false;
    attributes.forEach((key, value) {
      if (value != null) {
        flag = true;
      }
    });
    return flag;
  }
}
