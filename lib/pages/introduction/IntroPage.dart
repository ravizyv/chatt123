



import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:chatt/route/app_route/AppRouter.gr.dart';
import 'package:chatt/values/images.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';


@RoutePage()
class IntroPage extends StatefulWidget{
  
  @override
  _IntroPageState createState() {


    return _IntroPageState();
  }


}


class _IntroPageState extends State<IntroPage> {


  @override
  Widget build(BuildContext context) {
    return introWidget();
  }


  Widget introWidget() {
    return IntroductionScreen(
      showSkipButton: false,


      next: const Icon(Icons.arrow_forward_ios),
      pages: [
        PageViewModel(
            title: "Чат с доктором",
            body: "Общайтесь со своим врачом",
            image: _buildImage(ImagePath.intro1)
        ),
        PageViewModel(
            title: "Отправляйте файлы",
            body: "Отправляйте результаты ваших тестирований",
            image: _buildImage(ImagePath.intro2)
        ),
        PageViewModel(
            title: "Нейростимулятор",
            body: "Следите за состоянием вашего нейростимулятора",
            image: _buildImage(ImagePath.intro3)
        )

      ],
      onDone: onDonePress,
      showDoneButton: true,
      done: const Text(
        "Готово", style: TextStyle(color: Colors.deepPurple, fontSize: 18),),
    );
  }


  Widget _buildImage(String imagePath) {
    return Image.asset(imagePath, width: 150,);
  }

  void onDonePress() {

    print("Ondone.....");

    AutoRouter.of(context).push(const LoginPage());
  }


}
