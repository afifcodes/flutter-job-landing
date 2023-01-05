import 'package:flutter/material.dart';
import 'package:flutter_job_landing/utils/fade_animation.dart';
import 'package:flutter_job_landing/utils/route_animation.dart';
import 'package:flutter_job_landing/utils/system_ui.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Crete'),
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    onGenerateRoute: (settings) {
      if (settings.name == '/') {
        return RouteAnimation.slide(settings, LandingPage());
      }
      return RouteAnimation.slide(settings, LandingPage());
    }));

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    systemUi();
    return Scaffold(
      backgroundColor: Color(0xfffef3c7),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            FadeAnimation(
                delay: 200,
                child: Center(child: Lottie.asset('assets/logo.json'))),
            const Spacer(),
            FadeAnimation(
              delay: 200,
              child: Text(
                'Find Your Dream Job Here',
                style: TextStyle(fontSize: 36, color: Colors.grey[900]),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            FadeAnimation(
              delay: 400,
              child: Text(
                'Find the best job here. Register for better\nfuture and work according to your passion!.',
                style: TextStyle(color: Colors.grey[500]),
              ),
            ),
            const SizedBox(
              height: 64,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeAnimation(
                  delay: 600,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, '/');
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[900]),
                      child: const Center(
                          child: Text(
                        'Get Started',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
