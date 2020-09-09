import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  bool saving = false;
  @observable
  bool checkboxListTitle = false;
  @observable
  bool switchListTile = false;
  @observable
  String textField = '';

  @action
  void invertSaving() {
    saving = !saving;
  }

  @action
  void invertCheckboxListTile() {
    checkboxListTitle = !checkboxListTitle;
  }

  @action
  void invertSwitchListTile() {
    switchListTile = !switchListTile;
  }

  @action
  void changeTextField(String value) {
    textField = value;
  }

  void submit() {
    print('submit called...');
    invertSaving();
    print('start simulate call');
    new Future.delayed(new Duration(seconds: 2), () {
      invertSaving();
      print('end simulate call');
    });
  }
}
