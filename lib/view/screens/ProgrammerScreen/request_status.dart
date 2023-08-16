import 'package:flutter/material.dart';
import 'package:prog_job/view/screens/ProgrammerScreen/ProfileInfoScreen.dart';

import '../../../utils/size_config.dart';
import '../../customWidget/textStyleWidget.dart';

class RequestStatusScreen extends StatefulWidget {
  static const String id = "request_status_screen";

  @override
  State<RequestStatusScreen> createState() => _RequestStatusScreenState();
}

class _RequestStatusScreenState extends State<RequestStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfffafafa),
        elevation: 0,
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
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: SizeConfig.scaleWidth(22),
            ),
            color: Color(0xff4C5175),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ProfileInfo();
              }));
            },
            child: Card(
              clipBehavior: Clip.antiAlias,
              shape: CircleBorder(),
              elevation: 4,
              color: Color(0xffcbb523),
              child: SizedBox(
                width: SizeConfig.scaleWidth(25),
                height: SizeConfig.scaleHeight(25),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/prof1.png',
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xfffafafa),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: SizeConfig.scaleWidth(10)),
              child: TextStyleWidget('Requests Status:', Color(0xffcbb523),
                  SizeConfig.scaleTextFont(15), FontWeight.w500),
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
                                SizedBox(
                                  width: SizeConfig.screenWidth,
                                  child: TextStyleWidget(
                                      'Web Programmer',
                                      Color(0xff4C5175),
                                      SizeConfig.scaleTextFont(15),
                                      FontWeight.w500),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: SizeConfig.scaleHeight(10),
                                    ),
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
                                            FontWeight.w500),
                                      ],
                                    ),
                                    SizedBox(
                                      height: SizeConfig.scaleHeight(10),
                                    ),
                                    SizedBox(
                                      width: SizeConfig.scaleWidth(99),
                                      height: SizeConfig.scaleHeight(26),
                                      child: ElevatedButton(
                                        child: TextStyleWidget(
                                            'waiting reply',
                                            Colors.white,
                                            SizeConfig.scaleTextFont(10),
                                            FontWeight.w500),
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xff4C5175),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(2),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(right: SizeConfig.scaleWidth(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
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
                                  FontWeight.w500),
                            ],
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
