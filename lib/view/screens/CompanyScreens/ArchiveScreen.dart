import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prog_job/utils/size_config.dart';

import '../../customWidget/textStyleWidget.dart';
import '../ProgrammerScreen/ProfileInfoScreen.dart';
import '../ProgrammerScreen/SubmitJopScreen.dart';
import 'com_home.dart';
import 'no_of_request.dart';

class Archive extends StatefulWidget {
  static const String id = "archive_screen";

  @override
  State<Archive> createState() => _ArchiveState();
}

class _ArchiveState extends State<Archive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F5F5),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: SizeConfig.scaleWidth(14),
          ),
          color: Color(0xff4C5175),
        ),
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: Icon(
              Icons.search,
              size: SizeConfig.scaleWidth(22),
            ),
            color: Color(0xff4C5175),
          ),

        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.scaleWidth(10)),
              child: TextStyleWidget(
                'All Archives',
                Color(0xffcbb523),
                SizeConfig.scaleTextFont(15),
                FontWeight.w500,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white),
                    margin: EdgeInsets.all(
                      SizeConfig.scaleWidth(15),
                    ),
                    child: Row(
                      children: [
                        Container(
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5),
                                bottomRight: Radius.circular(5),
                              )),
                          child: Image.asset(
                            'assets/images/computer.png',
                            fit: BoxFit.cover,
                            width: SizeConfig.scaleWidth(96),
                            height: SizeConfig.scaleHeight(105),
                            color: Color(0xff4C5175).withOpacity(0.5),
                            colorBlendMode: BlendMode.darken,
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: SizeConfig.scaleWidth(10),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    TextStyleWidget(
                                      'Web Programmer',
                                      Color(0xff4C5175),
                                      SizeConfig.scaleTextFont(15),
                                      FontWeight.w500,
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.apartment,
                                          size: SizeConfig.scaleWidth(15),
                                          color: Color(0xffcbb523),
                                        ),
                                        TextStyleWidget(
                                          ' Magic Company',
                                          Colors.black,
                                          SizeConfig.scaleTextFont(10),
                                          FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.access_time,
                                          size: SizeConfig.scaleWidth(14),
                                          color: Color(0xffcbb523),
                                        ),
                                        TextStyleWidget(
                                          ' a minute ago',
                                          Colors.black,
                                          SizeConfig.scaleTextFont(10),
                                          FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: SizeConfig.scaleWidth(145),
                                      height: SizeConfig.scaleHeight(30),
                                      child: ElevatedButton(
                                        child: Row(
                                          children: [
                                            Container(
                                              height:
                                              SizeConfig.scaleHeight(18),
                                              width: SizeConfig.scaleWidth(18),
                                              child: Text(
                                                '12',
                                                style: TextStyle(
                                                  fontFamily: 'Poppins',
                                                  backgroundColor:
                                                  Color(0xffcbb523),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize:
                                                  SizeConfig.scaleTextFont(
                                                      10),
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            TextStyleWidget(
                                              'number of requests',
                                              Colors.white,
                                              SizeConfig.scaleTextFont(10),
                                              FontWeight.w500,
                                            ),
                                          ],
                                        ),
                                        onPressed: () {
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) {
                                                    return NumberOfRequestsScreen();
                                                  }));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xff4C5175),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius.circular(2),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    IconButton(
                                      alignment: Alignment.centerRight,
                                      icon: Icon(
                                        Icons.bookmark,
                                        size: SizeConfig.scaleWidth(20),
                                      ),
                                      color: Color(
                                        0xffcbb523,
                                      ),
                                      onPressed: () {},
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
