

import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

import '../constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onNavMenuTap,});
  final Function(int) onNavMenuTap;
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 60.0,
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20)
        , width: double.maxFinite,
        decoration: kHeaderDecoration ,
        child: Row(
            children: [
              SiteLogo(onTap: ()
              {

              }),

              const Spacer(),
              for(int i=0;i<navTiles.length;i++)
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: TextButton(onPressed: () {
                    onNavMenuTap(i);
                  },
                    child: Text(navTiles[i],
                        style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: CustomColor.whitePrimary)

                    ),

                  ),
                )
            ]

        )
    );
  }
}
