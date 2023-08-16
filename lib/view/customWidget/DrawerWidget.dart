import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prog_job/view/screens/CompanyScreens/ArchiveScreen.dart';
import 'package:prog_job/view/screens/CompanyScreens/CompanyInfoScreen.dart';
import 'package:prog_job/view/screens/CompanyScreens/MessagesCom.dart';
import 'package:prog_job/view/screens/CompanyScreens/com_all_jobs.dart';
import 'package:prog_job/view/screens/CompanyScreens/com_home.dart';
import 'package:prog_job/view/screens/ProgrammerScreen/FavoriteScreen.dart';
import 'package:prog_job/view/screens/ProgrammerScreen/MessagesProg.dart';
import 'package:prog_job/view/screens/ProgrammerScreen/NotificationsScreen.dart';
import 'package:prog_job/view/screens/ProgrammerScreen/SettingScreen.dart';
import 'package:prog_job/view/screens/ProgrammerScreen/all_jobs.dart';
import 'package:prog_job/view/screens/ProgrammerScreen/home.dart';
import 'package:prog_job/view/screens/ProgrammerScreen/request_status.dart';
import 'package:prog_job/view/screens/shared_screens/login.dart';
import 'package:prog_job/view/screens/shared_screens/user_type.dart';

import '../../utils/size_config.dart';
import '../screens/ProgrammerScreen/ProfileInfoScreen.dart';

class DrawerWidget extends StatefulWidget {

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(70),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildHeader(context),
              BuildMenuItems(context),
            ],
          ),
        ),
      ),
    );
  }
}

Widget BuildHeader(BuildContext context) {
  return SizedBox(
    height: SizeConfig.scaleHeight(220),
    width: SizeConfig.scaleWidth(400),
    child: DrawerHeader(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(70)),
          image: DecorationImage(
              image: AssetImage(
            "assets/images/drawer_photo.jpeg",
          ))),
      child: Padding(
        padding: EdgeInsets.only(top: SizeConfig.scaleHeight(500)),
        child: Text(
          "shorooq@gmail.com",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
  );
}

Widget BuildMenuItems(BuildContext context) {
  List<Widget> menuItems = [];

  return SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Row(
            children: [
              Icon(Icons.home, color: Color(0xffCBB523)),
              SizedBox(width: SizeConfig.scaleWidth(10)),
              Text("Home"),
            ],
          ),
          onTap: () {
            if (UserTypeScreen.type == 'programmer') {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            } else if (UserTypeScreen.type == 'company') {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ComHomeScreen();
              }));
            }
          }
  ) ,

        ListTile(
            title: Row(
              children: [
                Icon(Icons.person, color: Color(0xffCBB523)),
                SizedBox(width: SizeConfig.scaleWidth(10)),
                Text("Profile"),
              ],
            ),
            onTap: () {

              if (UserTypeScreen.type == 'programmer') {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return ProfileInfo();
                }));
              } else if (UserTypeScreen.type == 'company') {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                  return CompanyInfo();
                }));
              }
            }),
        if(UserTypeScreen.type=="company")
          ListTile(
            title: Row(
              children: [
                Icon(Icons.archive, color: Color(0xffCBB523)),
                SizedBox(width: SizeConfig.scaleWidth(10)),
                Text("Archive"),
              ],
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Archive();
              }));
            },
          ),
        ListTile(
          title: Row(
            children: [
              Icon(Icons.message, color: Color(0xffCBB523)),
              SizedBox(width: 10),
              Text("Messages"),
            ],
          ),
          onTap: () {
            if (UserTypeScreen.type == 'programmer') {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return MessagesProg();
              }));
            } else if (UserTypeScreen.type == 'company') {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return MessageCom();
              }));
            }
          },
        ),
        ListTile(
          title: Row(
            children: [
              Icon(Icons.newspaper, color: Color(0xffCBB523)),
              SizedBox(width: SizeConfig.scaleWidth(10)),
              Text("Jobs"),
            ],
          ),
          onTap: () {
            if (UserTypeScreen.type == 'programmer') {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return AllJobScreen();
              }));
            } else if (UserTypeScreen.type == 'company') {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return ComAllJobScreen();
              }));
            }
          },
        ),
        if(UserTypeScreen.type=="programmer")
          ListTile(
            title: Row(
              children: [
                Icon(Icons.my_library_books_sharp, color: Color(0xffCBB523)),
                SizedBox(width: SizeConfig.scaleWidth(10)),
                Text("Requests Status"),
              ],
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return RequestStatusScreen();
              }));
            },
          ),
        if(UserTypeScreen.type=="programmer")
          ListTile(
          title: Row(
            children: [
              Icon(Icons.notifications_active, color: Color(0xffCBB523)),
              SizedBox(width: SizeConfig.scaleWidth(10)),
              Text("Notifications"),
            ],
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return NotificationScreen();
            }));
          },
        ),

        if(UserTypeScreen.type=="programmer")
        ListTile(
          enabled: UserTypeScreen.type=="programmer",
          title: Row(
            children: [
              Icon(Icons.favorite_border_outlined, color: Color(0xffCBB523)),
              SizedBox(width: SizeConfig.scaleWidth(10)),
              Text("Favourites"),
            ],
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Favorite();
            }));
          },
        ),
        ListTile(
          title: Row(
            children: [
              Icon(Icons.settings, color: Color(0xffCBB523)),
              SizedBox(width: SizeConfig.scaleWidth(10)),
              Text("Settings"),
            ],
          ),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return SettingScreen();
            }));
          },
        ),
        ListTile(
          title: Row(
            children: [
              Icon(Icons.logout, color: Color(0xffCBB523)),
              SizedBox(width: SizeConfig.scaleWidth(10)),
              Text("Log out"),
            ],
          ),
          onTap: () {
            showLogoutDialog(context);

          },
        ),
      ],
    ),
  );
}
void showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text("Log Out"),
        content: Text("Are you sure you want to log out?"),
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(
            color: Colors.grey ,
            width: 1.5
          )
        ),
        actions: [
          TextButton(
            onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return LoginScreen(userType: "");
        })); },
            child: Text("Log Out"),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // إغلاق مربع الحوار
            },
            child: Text("Cancel"),
          ),
        ],
      );
    },
  );
}

