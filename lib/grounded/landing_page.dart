import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wiki_app/grounded/model/armor_model.dart';
import 'package:wiki_app/helpers/assets_list.dart';
import 'package:wiki_app/helpers/constants.dart';
import 'package:wiki_app/helpers/style.dart';
import 'package:wiki_app/widgets/custom_list_view.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:wiki_app/widgets/gridview.dart';
import 'package:wiki_app/widgets/modal_sheet.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#1E1E1E'),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor('#1E1E1E'),
        title: Center(
            child: Text(
          'Grounded',
          style:
              GoogleFonts.yuseiMagic(fontSize: 24, fontWeight: FontWeight.w400),
        )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 34, right: 34),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Center(
                    child: Image.asset(
                      temp_landing,
                      width: 200,
                    ),
                  ),
                  sizedBox50,
                  Text(
                    'All the knowledge on your fingertips',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.workSans(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  sizedBox10,
                  Text(
                    'Surviving made easy',
                    style: GoogleFonts.nunito(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, home);
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(HexColor('#FFFFFF'))),
                    child: Text('Let\' start',
                        style: GoogleFonts.workSans(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: HexColor('#252427')))),
              )
            ]),
      ),
    );
  }
}
