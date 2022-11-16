import 'package:flutter/cupertino.dart';
import 'package:flutter_common/flutter_common.dart';

import 'main.dart';



class ITestRoutesImpl implements IRouter{
  @override
  Map<String, Function> initRouters() {
   return {
     RouteName.home : (context, {arguments}) => const MyModelHomePage(title: '画廊'),
     RouteName.start : (context, {arguments}) => const MyModelHomePage(title: '画廊'),
   };
  }
  @override
  Map<String, IService> initService() {
    return {
      RouteName.testProvider : TestServiceImpl(),
    };
  }
}

class TestServiceImpl implements ITestModelService{
  @override
  void init() {
  }
  @override
  void goPage(BuildContext context) {
    Navigator.of(context).pushNamed(RouteName.home);
  }

  @override
  String getModelId() {
  return" 我是模块1 id";
  }
}

