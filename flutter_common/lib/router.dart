
///页面路由
abstract class IRouter {
  ///获取所有IRoutes
  Map<String, Function> initRouters();

  ///获取所有IProvider
  Map<String, IService> initService();
}

///模块通讯
abstract class IService{
  void init();
}

class ARouter{

  static ARouter? _instance;

  static ARouter get getInstance => _instance = _instance ?? ARouter._internal();

  /// @nodoc private constructor
  ARouter._internal();

  ///是否初始化
  bool _isInit = false;

  ///路由管理集合
 final List<IRouter> _routesList = [];

  /// 所有路由  和  路由接口 管理类
  Map<String, dynamic>  routes = {};

  ///是否初始化
  bool isInit(){
    return _isInit;
  }

  addRoutes(IRouter iRoutes){
    _routesList.add(iRoutes);
  }

  loadPage(){
    routes.clear();
    for (var value in _routesList) {
      routes.addAll(value.initRouters());
      routes.addAll(value.initService());
    }
    printLog(routes.toString());
    _isInit =true;
  }
}

abstract class RouteName{
  static const String home = '/home';
  static const String home2 = '/home2';
  static const String start = '/';
  static const String  testProvider = 'ITestModelProvider';
  static const String testProvider2 = 'ITest2ModelProvider';
}


printLog(Object object) {
    StringBuffer stringBuffer = StringBuffer();
    stringBuffer.writeln(
        '┌-----------------------------------------------------------------------------------------');
    stringBuffer.write('│-> ');
    stringBuffer.write("stag");
    stringBuffer.write(" ");
     stringBuffer.write("ssssssssssssssssssssssssssssssssssss");
     stringBuffer.write(": ");
     stringBuffer.write(object);
     print(stringBuffer.toString());
     print(
         '└-----------------------------------------------------------------------------------------');
}