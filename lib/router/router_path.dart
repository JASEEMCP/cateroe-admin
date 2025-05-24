import 'package:app/main.dart';

class ScreenPath {
  static const splash = '/';

  /// Auth routes
  static const login = '/login';
  static const signup = '/signup';
  static submit() => _appendIdIntoCurrentPath('/submit');
  static const forgotPwd = '/forgot';
  static resetPwd(String email) => _appendIdIntoCurrentPath('/reset?e=$email');

  /// Main routes

  static const home = '/home';
  static const events = '/events';
  static const transaction = '/transaction';
  static const addUser = '/add-user';
  static const remarks = '/remarks';

  ///Appending path
  static _appendIdIntoCurrentPath(String path) {
    final newPathUri = Uri.parse(path);
    final currentPathUri = appRouter.routeInformationProvider.value.uri;
    Map<String, dynamic> parm = Map.of(currentPathUri.queryParameters);
    parm.addAll(newPathUri.queryParameters);
    Uri? loc = Uri(
      path: '${currentPathUri.path}/${newPathUri.path}'.replaceAll('//', '/'),
      queryParameters: parm,
    );
    final newPath = path.replaceAll('/', '');
    return loc.toString().replaceAll('$newPath/$newPath', newPath);
  }
}
