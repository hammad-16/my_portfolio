import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/Project_card.dart';

import '../constants/colors.dart';
import '../utils/project_utils.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return  Container(
      height: 1174,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.fromLTRB(25, 20,25, 60),

      color: CustomColor.scaffoldBg,
      child: Column(
          children: [
            //Project Cards
            const Text("Projects",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,

              ),
            ),

            SizedBox(height: 50),
            ConstrainedBox(constraints: BoxConstraints(
              maxWidth: 900,
            )),
            Wrap(
              spacing: 25,
              runSpacing: 25,
              children:[
                for(int i=0;i<hobbyProjectUtils.length;i++)
                  ProjectCard(project: hobbyProjectUtils[i]),


              ],
            )
          ]


      ),
    );
  }
}
