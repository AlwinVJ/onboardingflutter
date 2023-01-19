import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        scrollPhysics: const BouncingScrollPhysics(),
        pages: [
          PageViewModel(
              titleWidget: const Text(
                'Are you looking for work from home oppurtunities?',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              body:
                  '''We are providing a wide range of work from opppurtunities for expreienced as well freshers.
                Even non gradutes can apply. 
                Part time and full time oppurtunities are listed''',
              image: Image.asset('images/wfh.jpg')),
          PageViewModel(
              titleWidget: const Text(
                'You can study as while gaining practical experience',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              body:
                  '''We provide a wide range of study materials as well as industrial projects to enhance your 
                  pracitcal knowledge and sharpen your problem solving skills.
                  You can be a master of self learning as well.''',
              image: Image.asset('images/wfh2.jpg')),
              PageViewModel(
              titleWidget: const Text(
                'We will help you to be the better version of yourselves',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              body:
                  '''We will assist if you have difficulties while learning. 
                  As well we will be mentoring you through your projects.''',
              image: Image.asset('images/wfh3.jpg')),
        ],
        onDone: () {
          Navigator.pushReplacementNamed(context, "home");
        },
        onSkip: () {
          Navigator.pushReplacementNamed(context, 'home');
        },
        showSkipButton: true,
        // showBackButton: true,
        // back: const Icon(Icons.arrow_back,color:Color(0xFF6C63FF)),
        skip: const Text(
          'Skip',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xFF6C63FF)),
        ),
        next: const Icon(Icons.arrow_forward,color: Color(0xFF6C63FF)),
        done: const Text(
          'Done',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xFF6C63FF)),
        ),
        dotsDecorator: DotsDecorator(
          size: const Size.square(10),
          activeSize: const Size(20, 10),
          color: Colors.black26,
          activeColor: const Color(0xFF6C63FF),
          spacing: const EdgeInsets.symmetric(horizontal: 3),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)
          )
      ),
    ));
  }
}
