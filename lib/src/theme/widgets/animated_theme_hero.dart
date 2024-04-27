import 'package:flutter/material.dart';

class AnimatedThemeHero extends StatelessWidget {

  const AnimatedThemeHero({
    required this.tag, required this.child, super.key,
    this.transitionOnUserGestures = true,
  });
  final Object tag;
  final bool transitionOnUserGestures;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      transitionOnUserGestures: transitionOnUserGestures,
      flightShuttleBuilder: (flightContext, animation, flightDirection, fromHeroContext, toHeroContext) {
        final isTriggeredByPush = flightDirection == HeroFlightDirection.push;
        final fromTheme = isTriggeredByPush ? Theme.of(fromHeroContext) : Theme.of(toHeroContext);
        final toTheme = isTriggeredByPush ? Theme.of(toHeroContext) : Theme.of(fromHeroContext);
        return AnimatedBuilder(
          animation: animation,
          builder: (context, child) {
            final animatedThemeData = ThemeData.lerp(fromTheme, toTheme, animation.value);
            return Theme(
              data: animatedThemeData,
              child: toHeroContext.widget,
            );
          },
        );
      },
      child: child,
    );
  }
}
