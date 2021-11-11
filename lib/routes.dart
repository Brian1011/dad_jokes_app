import 'package:dad_jokes/ui/screens/home_screen.dart';
import 'package:dad_jokes/ui/screens/splash_screen.dart';

var routes = {
  RouteConfig.defaultRoute: (context) => SplashScreen(),
  RouteConfig.home: (context) => HomeScreen(),
};

class RouteConfig {
  static final defaultRoute = "/";
  static final home = "/home";
}
