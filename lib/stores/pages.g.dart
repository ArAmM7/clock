// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pages.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PagesStore on _PagesStore, Store {
  late final _$currentPageAtom = Atom(name: '_PagesStore.currentPage', context: context);

  @override
  double get currentPage {
    _$currentPageAtom.reportRead();
    return super.currentPage;
  }

  @override
  set currentPage(double value) {
    _$currentPageAtom.reportWrite(value, super.currentPage, () {
      super.currentPage = value;
    });
  }

  late final _$controllerAtom = Atom(name: '_PagesStore.controller', context: context);

  @override
  PageController get controller {
    _$controllerAtom.reportRead();
    return super.controller;
  }

  @override
  set controller(PageController value) {
    _$controllerAtom.reportWrite(value, super.controller, () {
      super.controller = value;
    });
  }

  late final _$_PagesStoreActionController =
      ActionController(name: '_PagesStore', context: context);

  @override
  void changeCurrentPage(double value) {
    final _$actionInfo =
        _$_PagesStoreActionController.startAction(name: '_PagesStore.changeCurrentPage');
    try {
      return super.changeCurrentPage(value);
    } finally {
      _$_PagesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentPage: ${currentPage},
controller: ${controller}
    ''';
  }
}
