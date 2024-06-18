import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';

class description extends StatefulWidget {
  const description({super.key});

  @override
  State<description> createState() => _descriptionState();
}

class _descriptionState extends State<description> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 20);
    Center(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    SizedBox(
    width: 33,
    ),
    Text(
    "I can ",
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
    'build your first app',
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
    'edit your video',
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
    'make you a logo',
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
    'build you a website',
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
    'make you a poster',
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
    'make you a flyer',
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
    ],
    ),
    ],
    ),
    );
  }
}
