import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500,

      ),
      child: Column(
        children: [
          //platforms
          for(int i=0;i<platformItems.length;i++)
            Container(
              margin: EdgeInsets.only(bottom: 5),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: CustomColor.bgLight2,
                borderRadius: BorderRadius.circular(5),

              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                leading: Image.asset(platformItems[i]["img"],width: 26)
                ,title: Text(platformItems[i]["title"]),

              ),
            ),
          SizedBox(height: 50)
          ,
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            children: [
              for(int i=0;i<skillItems.length;i++)
                Chip(
                  backgroundColor: CustomColor.bgLight1,

                  padding: EdgeInsets.symmetric(vertical: 12,horizontal: 16,),
                  label: Text(skillItems[i]["title"]),avatar: Image.asset(skillItems[i]["img"],width: 30,),)

            ],
          )
          //skills
        ],
      ),
    );
  }
}
