import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
        height: 500,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 33,
              ),
              Text(
                "I am ",
                style: GoogleFonts.abel(
                  textStyle: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    letterSpacing: 0.0,
                  ),
                ),
              ),
              AnimatedTextKit(
                  displayFullTextOnTap: true,
                  repeatForever: true,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      'a CSE student',
                      textStyle: GoogleFonts.abel(
                        textStyle: TextStyle(
                          color: Color.fromARGB(
                              255, 255, 255, 255),
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0.0,
                        ),
                      ),
                    ),
                    TypewriterAnimatedText(
                      'a Competitive Programmer',
                      textStyle: GoogleFonts.abel(
                        textStyle: TextStyle(
                          color: Color.fromARGB(
                              255, 255, 255, 255),
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0.0,
                        ),
                      ),
                    ),
                    TypewriterAnimatedText(
                      'a Flutter Developer',
                      textStyle: GoogleFonts.abel(
                        textStyle: TextStyle(
                          color: Color.fromARGB(
                              255, 255, 255, 255),
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0.0,
                        ),
                      ),
                    ),
                    TypewriterAnimatedText(
                      'a Tech Enthusiast',
                      textStyle: GoogleFonts.abel(
                        textStyle: TextStyle(
                          color: Color.fromARGB(
                              255, 255, 255, 255),
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0.0,
                        ),
                      ),
                    ),
                  ]
              )
            ]
        )
    )
    ;
  }
}
