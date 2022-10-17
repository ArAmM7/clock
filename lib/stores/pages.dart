import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

part 'pages.g.dart';

class PagesStore = _PagesStore with _$PagesStore;

abstract class _PagesStore with Store {
  @observable
  double currentPage = 0;

  @observable
  PageController controller = PageController();

  @action
  void changeCurrentPage(double value) => currentPage = value;
}
