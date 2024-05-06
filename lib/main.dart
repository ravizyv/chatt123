

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chatt/bloc/auth/auth_bloc.dart';
import 'package:chatt/bloc/auth/auth_state.dart';
import 'package:chatt/dependency-injection/injection.dart';
import 'package:chatt/route/app_route/AppRouter.dart';
import 'package:chatt/route/app_route/AppRouter.gr.dart';
import 'package:chatt/values/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  initializeKiwi();

  runApp(MultiBlocProvider(providers: [

    BlocProvider<AuthBloc>(
      create: (context) => AuthBloc((InitialAuthState())),
    )
  ],
      child: MyApp()));
}

class MyApp extends StatelessWidget {

  final appRouter= AppRouter();
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter.config(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

@RoutePage()
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text("Stim Network"),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Image.asset(ImagePath.logo,width: 200,)
          ],
        ),
      ),


    );
  }


 @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future<void>.delayed(const Duration(seconds: 3));

    print("Delay is done lets go to the next page");
    // navigate to intro screen
   AutoRouter.of(context).push(const IntroPage());

  }
}
