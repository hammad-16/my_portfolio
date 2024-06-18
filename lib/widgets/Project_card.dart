
import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import '../constants/colors.dart';
import 'dart:js' as js;

class ProjectCard extends StatelessWidget {
  const ProjectCard({
    super.key,
    required this.project
  });
final ProjectUtils project;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 320,
      width :280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,

      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,

        children: [
          Image.asset(project.image, fit: BoxFit.cover,
            width: 280,
            height:170,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(project.title,
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: CustomColor.whitePrimary
              ),
            ),
          )
          //subtitle
          ,Padding(
            padding: const EdgeInsets.fromLTRB(12,0,12,12),
            child: Text(project.subtitle,
              style: TextStyle(
                  fontSize: 12,
                  color: CustomColor.whitePrimary
              ),
            ),
          ),
          const Spacer(),
          //footer
          Container(
              color: CustomColor.bgLight1,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Row(
                  children: [
                    Text("Check on Github : ",style: TextStyle(
                      color: CustomColor.yellowSecondary,
                      fontSize: 15,

                    ),),
                    const Spacer()
                    ,
                    InkWell(
                        onTap: ()
                        {
                          js.context.callMethod("open",[project.Link]);
                        },
                        child: Image.asset("assets/github_logo.png",width:18))
                  ]
              )



          )

        ],

      ),

    );
  }
}
