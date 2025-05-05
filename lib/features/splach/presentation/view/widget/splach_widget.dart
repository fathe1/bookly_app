import 'package:bookly_app/core/constants/constants.dart';
import 'package:bookly_app/core/routes/app_router.dart';
import 'package:bookly_app/core/theme/theme.dart';
import 'package:flutter/material.dart';

class SplachWidget extends StatefulWidget {
  const SplachWidget({super.key});

  @override
  State<SplachWidget> createState() => _SplachWidgetState();
}

class _SplachWidgetState extends State<SplachWidget>
    with SingleTickerProviderStateMixin {
  // ignore: prefer_final_fields
  late AnimationController animationController;
  late Animation<Offset> animation;
  late Animation<Offset> animation2;
  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animation = Tween<Offset>(begin: Offset(0, 8), end: Offset(0, 0))
        .animate(animationController);
    animation2 = Tween<Offset>(begin: Offset(0, -8), end: Offset(0, 0))
        .animate(animationController);
    animationController.forward();
    super.initState();
    GoToHome();
  }

  // ignore: non_constant_identifier_names
  GoToHome() {
    Future.delayed(Duration(seconds: 3), () {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacementNamed(context, AppRouter.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SlideTransition(
            position: animation2,
            child: Container(
              height: 100,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(Appassets.logo), fit: BoxFit.fill)),
            ),
          ),
          SizedBox(
            height: 3,
          ),
          SlideTransition(
            position: animation,
            child: Text(
              "Read Free Books",
              style: styletext.textStyle20,
            ),
          ),
        ],
      ),
    );
  }
}
