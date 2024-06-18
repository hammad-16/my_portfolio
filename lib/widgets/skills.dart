import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class ServicesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Text(
            "My Skills & Achievements",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
      GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 3,
        children: [
          ServicesBox(
            title: "Upcoming SWE Intern,Microsoft",
            icon: FontAwesomeIcons.microsoft,
            description:
            "I have been selected for a prestigious internship at Microsoft for the role of Software Engineer and I am looking forward to having an unforgettable and extremely valuable experiences there.",
            buttonText: "Read More",
          ),
          ServicesBox(
            title: "Google DSC Lead",
            icon: FontAwesomeIcons.code,
            description:
            "I serve as the Lead(President) of the Google Developer Student Club at my Institute where I have conducted activities like Google Cloud & Android campaigns, hackathons, coding competitions with my team.",
            buttonText: "Read More",
          ),
          ServicesBox(
            title: "Internship Coordinator, CSE",
            icon: FontAwesomeIcons.signal,
            description:
            "I manage and coordinate internships and placements of students under the Training and placements cell, communicate with Hrs, companies etc and explore new technologies and make new connections.",
            buttonText: "Read More",
          ),
          ServicesBox(
            title: "Head, Board of Tech Council",
            icon: FontAwesomeIcons.signal,
            description:
            "I have been selected as the head of the Technical Council of the Institute under the Student Body Gymkhana where I manage and oversee all the technical activities of the Institution.",
            buttonText: "Read More",
          ),
          ServicesBox(
            title: "Mentee at Amazon MLSS",
            icon: FontAwesomeIcons.amazon,
            description:
            "I was selected as a mentee for Amazon summer school on Machine learning for top 100 students in India where I gained insights into the world of ML and AI.",
            buttonText: "Read More",
          ),
          ServicesBox(
            title: "C, C++ Intermediate",
            icon: FontAwesomeIcons.c,
            description:
            "I majorly code in C and C++ languages as well as have basic knowledge about Python and Java. I have worked on basic projects in Javascript.",
            buttonText: "Read More",
          ),
          ServicesBox(
            title: "Data Structures & Algorithms",
            icon: FontAwesomeIcons.cableCar,
            description:
            "I have keen interest in Competitive Programming and have a strong foundation in Data Structures & Algorithms.I practice on platforms like Leetcode, gfg etc.",
            buttonText: "Read More",
          ),
          ServicesBox(
            title: "Frontend Web Development",
            icon: FontAwesomeIcons.js,
            description:
            "I have keen interest in Frontend development using technologies like HTML, CSS, Javascript, Reactjs, tailwind css, bootstrap, redux etc.",
            buttonText: "Read More",
          ),
          ServicesBox(
            title: "Computer fundamentals",
            icon: FontAwesomeIcons.code,
            description:
            "I have strong foundation of computer fundamentals like Operating System, Database Management System, Computer Networks, Object Oriented Programming etc.",
            buttonText: "Read More",
          ),
          ServicesBox(
            title: "System Design",
            icon: FontAwesomeIcons.code,
            description:
            "I have a keen interest in System Design components, High level design etc. I also have basic knowledge about database design and database Management in backend development.",
            buttonText: "Read More",
          ),
        ],
      )
        ],
      ),
    );
  }
}



class ServicesBox extends StatelessWidget {
  final String title;
  final IconData icon;
  final String description;
  final String buttonText;

  ServicesBox({
    required this.title,
    required this.icon,
    required this.description,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Icon(icon, size: 30),
            SizedBox(height: 10),
            Text(description),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {},
              child: Text(buttonText),
            ),
          ],
        ),
      ),
    );
  }
}