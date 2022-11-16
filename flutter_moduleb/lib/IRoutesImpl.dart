

import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_moduleb/page2.dart';


class ITest2RoutesImpl implements IRouter{
  @override
  Map<String, Function> initRouters() {
   return {
     RouteName.home2 : (context, {arguments}) => const MyHomePage2(title: '我是模块2'),
   };
  }

  @override
  Map<String, IService> initService() {
    return {
      RouteName.testProvider2 : Test2Service(),
    };
  }
}

class Test2Service implements ITest2ModelService{
  @override
  void init() {
  }


  @override
  String getText() {
   return "我是模块2";
  }
}

