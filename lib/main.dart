import 'package:flutteframe/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_modulea/IRoutesImpl.dart';
import 'package:flutter_moduleb/IRoutesImpl.dart';

import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      onInit: (){
        if (!ARouter.getInstance.isInit()) {
          ARouter.getInstance.addRoutes(ITestRoutesImpl());
          ARouter.getInstance.addRoutes(ITest2RoutesImpl());
          ARouter.getInstance.loadPage();
        }
      },
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  @override
  void initState() {

    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("route"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        //  Navigator.of(context).pushNamed(RouteName.home);
       RouteUtils.navigation<ITestModelService>(RouteName.testProvider).goPage(context);
      }),
    );
  }
}

