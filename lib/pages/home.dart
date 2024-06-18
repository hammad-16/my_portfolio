import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/hover.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/constants/skill_items.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'package:my_portfolio/widgets/contact_section.dart';
import 'package:my_portfolio/widgets/desktop_project.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/footer.dart';
import 'package:my_portfolio/widgets/header_desktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_screen.dart';
import 'package:my_portfolio/widgets/projects_section.dart';
import 'package:my_portfolio/widgets/site_logo.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/widgets/skills.dart';
import 'package:my_portfolio/widgets/skills_desktop.dart';
import 'package:my_portfolio/widgets/skills_mobile.dart';
import 'package:my_portfolio/widgets/Project_card.dart';


import '../widgets/text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys =List.generate(5, (index) => GlobalKey());
  @override

  Widget build(BuildContext context) {
    return  LayoutBuilder(
      builder: (context,constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,

          endDrawer:constraints.maxWidth>=kMinDesktopWidth? null: DrawerMobile(onNavItemTap: (int navIndex) {
            scaffoldKey.currentState?.closeEndDrawer();
            scrollToSection(navIndex);
          },),
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key:navbarKeys.first),

                //MAIN
                if(constraints.maxWidth>=kMinDesktopWidth)
                HeaderDesktop(onNavMenuTap: (int navIndex){
                  scrollToSection(navIndex);
                },)
                else
              HeaderMobile(
                onLogoTap: (){},
                onMenuTap: (){
                  scaffoldKey.currentState?.openEndDrawer();
                },
              ),
              MainScreen(),

                //SKILLS
                Container(
                  key: navbarKeys[1],
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(25, 20,25, 60),


                  color: CustomColor.bgLight1,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                     const Text("Skills",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,

                        ),
                      )
                      ,
                      SizedBox(height: 50,),
                   if(constraints.maxWidth>=kMedDesktopWidth)
                    SkillsDesktop()
                      else
                        SkillsMobile()

                    ],
                  )
                ),



                //CODING PROFILES
                // Container(
                //   height: 500,
                //   width: double.maxFinite,
                //   color: Colors.blueGrey,
                // ),
                //


                //PROJECTS
                if(constraints.maxWidth<kMinDesktopWidth+229)
                ProjectSection(key: navbarKeys[2],)
                else
                  DesktopProject(key: navbarKeys[2]),

                //CONTACT
               ContactSection(key: navbarKeys[3]),
                //FOOTER
               Footer()

              ]

            ),
          ),
        );
      }
    );
  }
  void scrollToSection(int navIndex) {



    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
  // final key= navbarKeys[navIndex];
  // Scrollable.ensureVisible(context,
  // duration: const Duration(milliseconds: 500),
  // curve: Curves.easeInOut,)
}
