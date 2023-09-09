import 'package:mobx/mobx.dart';

part 'slider_state.g.dart';

class SliderState = _SliderState with _$SliderState;

abstract class _SliderState with Store {
  @observable
  int currentIndex = 0;
}
