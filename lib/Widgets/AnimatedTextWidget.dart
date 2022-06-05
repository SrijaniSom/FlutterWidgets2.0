import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text Widget'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Discipline is the best tool',
                    speed: Duration(milliseconds: 100),
                    textStyle: TextStyle(
                        color: Colors.green,
                        fontSize: 15.0,
                        letterSpacing: 1.3)),
                TypewriterAnimatedText('Design first, then code',
                 speed: Duration(milliseconds: 100),
                    textStyle: TextStyle(
                        color: Colors.green,
                        fontSize: 15.0,
                        letterSpacing: 1.3)),
                TypewriterAnimatedText('Do not patch bugs out, rewrite them',
                 speed: Duration(milliseconds: 100),
                    textStyle: TextStyle(
                        color: Colors.green,
                        fontSize: 15.0,
                        letterSpacing: 1.3)),
                TypewriterAnimatedText('Do not test bugs out, design them out',
                 speed: Duration(milliseconds: 100),
                    textStyle: TextStyle(
                        color: Colors.green,
                        fontSize: 15.0,
                        letterSpacing: 1.3)),
              ],
              pause: Duration(milliseconds: 200),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ],
        ),
      ),
    );
  }
}
