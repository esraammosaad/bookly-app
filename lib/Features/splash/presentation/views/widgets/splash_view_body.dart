import 'dart:async';
import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_routes.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);
  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}
class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliderAnimation;
  @override
  void initState() {
    splashViewAnimation();
    delayedNavigation();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.5,
              child: Image.asset(ImagesData.logo)),
          const SizedBox(
            height: 10,
          ),
          AnimatedBuilder(
            animation: animationController,
            builder: (BuildContext context, _) {
              return SlideTransition(
                position: sliderAnimation,
                child: const Text(
                  'Welcome to book store',
                  style: TextStyle(fontSize: 12),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Future<void> delayedNavigation() {
    return Future.delayed(
      const Duration(seconds: 5),
      () => context.go(AppRoutes.homeView),


    );
  }

  void splashViewAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    sliderAnimation = Tween(begin: const Offset(0, 5), end: const Offset(0, 0))
        .animate(animationController);
    animationController.forward();
  }
}
