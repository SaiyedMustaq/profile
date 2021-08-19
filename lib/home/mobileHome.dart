import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mohileHome extends StatefulWidget {
  const mohileHome({Key? key}) : super(key: key);

  @override
  _mohileHomeState createState() => _mohileHomeState();
}

class _mohileHomeState extends State<mohileHome> {
  late List<AnimatedTextExample> _examples;
  int _index = 0;
  int _tapCount = 0;

  @override
  void initState() {
    _examples = animatedTextExamples(onTap: () {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final animatedTextExample = _examples[_index];
    return Scaffold(
      body: Stack(
        children: [
          // Container(
          //   height: MediaQuery.of(context).size.height,
          //   child: Image.asset(
          //     'assets/image.png',
          //     fit: BoxFit.cover,
          //   ),
          // ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(color: animatedTextExample.color),
                height: 100.0,
                width: 300,
                child: Center(
                  key: ValueKey(animatedTextExample.label),
                  child: animatedTextExample.child,
                ),
              ),
              SizedBox(height: 50.0),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: double.infinity - 50,
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.5),
                ),
                child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, top: 10.0, bottom: 10.0),
                    child: Text("Home", style: TextStyle(fontSize: 25))),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: double.infinity - 50,
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.5),
                ),
                child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, top: 10.0, bottom: 10.0),
                    child: Text("About",
                        style: TextStyle(
                          fontSize: 25,
                        ))),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 10.0, bottom: 10.0),
                  child: Text("Services", style: TextStyle(fontSize: 25))),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 10.0, bottom: 10.0),
                  child: Text("Project", style: TextStyle(fontSize: 25))),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 10.0, bottom: 10.0),
                  child: Text("Contact", style: TextStyle(fontSize: 25))),
              Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 10.0, bottom: 10.0),
                  child: Text("Resume", style: TextStyle(fontSize: 25))),
              SizedBox(height: AppBar().preferredSize.height)
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _index = ++_index % _examples.length;
            _tapCount = 0;
          });
        },
        tooltip: 'Next',
        child: const Icon(
          Icons.play_circle_filled,
          size: 50.0,
        ),
      ),
    );
  }
}

class AnimatedTextExample {
  final String label;
  final Color? color;
  final Widget child;

  const AnimatedTextExample({
    required this.label,
    required this.color,
    required this.child,
  });
}

// Colorize Text Style
const _colorizeTextStyle = TextStyle(
  fontSize: 50.0,
  fontFamily: 'Horizon',
);

// Colorize Colors
const _colorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];

List<AnimatedTextExample> animatedTextExamples({VoidCallback? onTap}) =>
    <AnimatedTextExample>[
      AnimatedTextExample(
        label: 'Rotate',
        color: Colors.orange[100],
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(
                  width: 20.0,
                  height: 100.0,
                ),
                const Text(
                  'Be',
                  style: TextStyle(fontSize: 43.0),
                ),
                const SizedBox(
                  width: 20.0,
                  height: 100.0,
                ),
                DefaultTextStyle(
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Horizon',
                  ),
                  child: AnimatedTextKit(
                    animatedTexts: [
                      RotateAnimatedText('POSITIVE'),
                      RotateAnimatedText('DIFFERENT'),
                      RotateAnimatedText(
                        'WORK HARD',
                        textStyle: const TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                    onTap: onTap,
                    isRepeatingAnimation: true,
                    totalRepeatCount: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // AnimatedTextExample(
      //   label: 'Fade',
      //   color: Colors.brown[600],
      //   child: DefaultTextStyle(
      //     style: const TextStyle(
      //       fontSize: 32.0,
      //       fontWeight: FontWeight.bold,
      //     ),
      //     child: AnimatedTextKit(
      //       animatedTexts: [
      //         FadeAnimatedText('do IT!'),
      //         FadeAnimatedText('do it RIGHT!!'),
      //         FadeAnimatedText('do it RIGHT NOW!!!'),
      //       ],
      //       onTap: onTap,
      //     ),
      //   ),
      // ),
      //TODO animation
      // AnimatedTextExample(
      //   label: 'Typer',
      //   color: Colors.lightGreen[800],
      //   child: SizedBox(
      //     width: 250.0,
      //     child: DefaultTextStyle(
      //       style: const TextStyle(
      //         fontSize: 30.0,
      //         fontFamily: 'Bobbers',
      //       ),
      //       child: AnimatedTextKit(
      //         animatedTexts: [
      //           TyperAnimatedText('It is not enough to do your best,'),
      //           TyperAnimatedText('you must know what to do,'),
      //           TyperAnimatedText('and then do your best'),
      //           TyperAnimatedText('- W.Edwards Deming'),
      //         ],
      //         onTap: onTap,
      //       ),
      //     ),
      //   ),
      // ),
      //TODO animation
      // AnimatedTextExample(
      //   label: 'Typewriter',
      //   color: Colors.teal[700],
      //   child: SizedBox(
      //     width: 250.0,
      //     child: DefaultTextStyle(
      //       style: const TextStyle(
      //         fontSize: 30.0,
      //         fontFamily: 'Agne',
      //       ),
      //       child: AnimatedTextKit(
      //         animatedTexts: [
      //           TypewriterAnimatedText('Discipline is the best tool'),
      //           TypewriterAnimatedText('Design first, then code', cursor: '|'),
      //           TypewriterAnimatedText('Do not patch bugs out, rewrite them',
      //               cursor: '<|>'),
      //           TypewriterAnimatedText('Do not test bugs out, design them out',
      //               cursor: '💡'),
      //         ],
      //         onTap: onTap,
      //       ),
      //     ),
      //   ),
      // ),
      //TODO animation
      // AnimatedTextExample(
      //   label: 'Scale',
      //   color: Colors.blue[700],
      //   child: DefaultTextStyle(
      //     style: const TextStyle(
      //       fontSize: 70.0,
      //       fontFamily: 'Canterbury',
      //     ),
      //     child: AnimatedTextKit(
      //       animatedTexts: [
      //         ScaleAnimatedText('Think'),
      //         ScaleAnimatedText('Build'),
      //         ScaleAnimatedText('Ship'),
      //       ],
      //       onTap: onTap,
      //     ),
      //   ),
      // ),
      //TODO animation
      // AnimatedTextExample(
      //   label: 'Colorize',
      //   color: Colors.blueGrey[50],
      //   child: AnimatedTextKit(
      //     animatedTexts: [
      //       ColorizeAnimatedText(
      //         'Larry Page',
      //         textStyle: _colorizeTextStyle,
      //         colors: _colorizeColors,
      //       ),
      //       ColorizeAnimatedText(
      //         'Bill Gates',
      //         textStyle: _colorizeTextStyle,
      //         colors: _colorizeColors,
      //       ),
      //       ColorizeAnimatedText(
      //         'Steve Jobs',
      //         textStyle: _colorizeTextStyle,
      //         colors: _colorizeColors,
      //       ),
      //     ],
      //     onTap: onTap,
      //   ),
      // ),
      //TODO animation
      // AnimatedTextExample(
      //   label: 'TextLiquidFill',
      //   color: Colors.white,
      //   child: TextLiquidFill(
      //     text: 'LIQUIDY',
      //     waveColor: Colors.blueAccent,
      //     boxBackgroundColor: Colors.redAccent,
      //     textStyle: const TextStyle(
      //       fontSize: 70,
      //       fontWeight: FontWeight.bold,
      //     ),
      //     boxHeight: 300,
      //   ),
      // ),
      //TODO animation
      // AnimatedTextExample(
      //   label: 'Wavy Text',
      //   color: Colors.purple,
      //   child: DefaultTextStyle(
      //     style: const TextStyle(
      //       fontSize: 20.0,
      //     ),
      //     child: AnimatedTextKit(
      //       animatedTexts: [
      //         WavyAnimatedText(
      //           'Hello World',
      //           textStyle: const TextStyle(
      //             fontSize: 24.0,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //         WavyAnimatedText('Look at the waves'),
      //         WavyAnimatedText('They look so Amazing'),
      //       ],
      //       onTap: onTap,
      //     ),
      //   ),
      // ),
      //TODO animation
      // AnimatedTextExample(
      //   label: 'Flicker',
      //   color: Colors.pink[300],
      //   child: DefaultTextStyle(
      //     style: const TextStyle(
      //       fontSize: 35,
      //       color: Colors.white,
      //       shadows: [
      //         Shadow(
      //           blurRadius: 7.0,
      //           color: Colors.white,
      //           offset: Offset(0, 0),
      //         ),
      //       ],
      //     ),
      //     child: AnimatedTextKit(
      //       repeatForever: true,
      //       animatedTexts: [
      //         FlickerAnimatedText('Flicker Frenzy'),
      //         FlickerAnimatedText('Night Vibes On'),
      //         FlickerAnimatedText("C'est La Vie !"),
      //       ],
      //       onTap: onTap,
      //     ),
      //   ),
      // ),
      //TODO animation
      // AnimatedTextExample(
      //   label: 'Combination',
      //   color: Colors.pink,
      //   child: AnimatedTextKit(
      //     onTap: onTap,
      //     animatedTexts: [
      //       WavyAnimatedText(
      //         'On Your Marks',
      //         textStyle: const TextStyle(
      //           fontSize: 24.0,
      //         ),
      //       ),
      //       FadeAnimatedText(
      //         'Get Set',
      //         textStyle: const TextStyle(
      //           fontSize: 32.0,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //       ScaleAnimatedText(
      //         'Ready',
      //         textStyle: const TextStyle(
      //           fontSize: 48.0,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //       RotateAnimatedText(
      //         'Go!',
      //         textStyle: const TextStyle(
      //           fontSize: 64.0,
      //         ),
      //         rotateOut: false,
      //         duration: const Duration(milliseconds: 400),
      //       )
      //     ],
      //   ),
      // ),
    ];
