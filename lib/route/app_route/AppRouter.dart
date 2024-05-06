import 'package:auto_route/auto_route.dart';
import 'AppRouter.gr.dart';



@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter{

    @override
    List<AutoRoute> get routes=> [

    AutoRoute(page: IntroPage.page,initial: true),
    AutoRoute(page: LoginPage.page),
        AutoRoute(
            page: HomeRoute.page,
            path: '/',
            children: [
            AutoRoute(page: StimRoute.page, path: 'stim'),
            AutoRoute(page: MessageRoute.page, path: 'chat'),
            AutoRoute(page: TestingRoute.page, path: 'testing'),
    ],)];



}
