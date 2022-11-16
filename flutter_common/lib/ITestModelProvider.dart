import 'package:flutter/material.dart';
import 'router.dart';


abstract class ITestModelService implements IService{
  void goPage(BuildContext context);
  String getModelId();
}

abstract class ITest2ModelService implements IService{
  String getText();
}

