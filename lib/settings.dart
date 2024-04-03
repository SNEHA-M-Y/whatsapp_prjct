import 'package:flutter/material.dart';
import 'package:whatsapp_prjct/account.dart';
import 'package:whatsapp_prjct/privacy.dart';
import 'package:whatsapp_prjct/profile.dart';


class settingspg extends StatefulWidget {
  const settingspg({super.key});

  @override
  State<settingspg> createState() => _settingspgState();
}

class _settingspgState extends State<settingspg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 27, 32),
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            )),
        title: Row(
          children: [
            Text(
              "Settings",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 170,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search_outlined,
                  color: Colors.white,
                ))
          ],
        ),
        backgroundColor: Color.fromARGB(255, 9, 27, 32),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            InkWell(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 5),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/dp3.webp"),
                      radius: 30,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      children: [
                        Text(
                          "Selena",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "+91 98756 43210",
                          style: TextStyle(color: Colors.white30),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.qr_code_outlined,
                          color: Color.fromARGB(255, 37, 211, 102),
                        )),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_drop_down_circle_outlined,
                        color: Color.fromARGB(255, 37, 211, 102),
                      ))
                ],
              ),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => profilepg(),)),
            ),
            Divider(
              color: Colors.white54,
            ),
            ListTile(
              leading: Icon(
                Icons.key_outlined,
                color: Colors.white54,
              ),
              title: Text(
                "Account",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "Security notifications,change number",
                style: TextStyle(color: Colors.white54),
              ),
              onTap: () =>Navigator.push(context, MaterialPageRoute(builder: (context) => accountpg(),)) ,
            ),
            ListTile(
              leading: Icon(
                Icons.lock_outline,
                color: Colors.white54,
              ),
              title: Text(
                "Privacy",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
              ),onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => privacypg(),)),
              subtitle: Text(
                "Block contacts,disappearing messages",
                style: TextStyle(color: Colors.white54),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.face_outlined,
                color: Colors.white54,
              ),
              title: Text(
                "Avatar",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "Create,edit,profile photo",
                style: TextStyle(color: Colors.white54),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.chat_outlined,
                color: Colors.white54,
              ),
              title: Text(
                "Chats",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "Theme,wallpaper,chat history",
                style: TextStyle(color: Colors.white54),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications_none_outlined,
                color: Colors.white54,
              ),
              title: Text(
                "Notifications",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "Message,group & call tones",
                style: TextStyle(color: Colors.white54),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.data_saver_off_outlined,
                color: Colors.white54,
              ),
              title: Text(
                "Storage and data",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "Network usage,auto-download",
                style: TextStyle(color: Colors.white54),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.language_outlined,
                color: Colors.white54,
              ),
              title: Text(
                "App language",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "English (device's language)",
                style: TextStyle(color: Colors.white54),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.help_outline_sharp,
                color: Colors.white54,
              ),
              title: Text(
                "Help",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                "Help center,contact us,privacy policy",
                style: TextStyle(color: Colors.white54),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.people_alt_outlined,
                color: Colors.white54,
              ),
              title: Text(
                "Invite a friend",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),
              ),
            ),
            Text(
              "from",
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 175),
              child: Row(
                children: [
                  Image.asset(
                    "images/iconmeta.png",
                    scale: 10,
                  ),
                  Text(
                    "Meta",
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
