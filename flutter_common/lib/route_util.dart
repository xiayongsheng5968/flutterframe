
import 'router.dart';


class RouteUtils {
  RouteUtils._();

  static T navigation<T>(String router) {
    return ARouter.getInstance.routes[router] as T;
  }
}
