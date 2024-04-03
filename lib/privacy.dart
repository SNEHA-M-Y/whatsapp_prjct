import 'package:flutter/material.dart';

class privacypg extends StatefulWidget {
  const privacypg({super.key});

  @override
  State<privacypg> createState() => _privacypgState();
}

class _privacypgState extends State<privacypg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 27, 32),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 27, 32),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            )),
        title: Text(
          "Privacy",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Who can see my personal info",
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ),
          ListTile(
            title: Text(
              "Last seen and online",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              "Nobody",
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ),
          ListTile(
            title: Text(
              "Profile photo",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              "My contacts",
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ),
          ListTile(
            title: Text(
              "About",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              "My contacts",
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ),
          ListTile(
            title: Text(
              "Status",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              "My contacts",
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ),
          ListTile(
            title: Text(
              "Read reciepients",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              "If turned off,you won't send or receive Read reciepients.Read reciepients are always sent for group chats.",
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
            trailing: Icon(
              Icons.toggle_on,
              color: Color.fromARGB(255, 5, 211, 102),
            ),
          ),
          Divider(
            color: Colors.white30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              "Disappearing messages",
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ),
          ListTile(
            title: Text(
              "Default message timer",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              "Start new chats with disappearing messages set to your timer",
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
            trailing: Text(
              "Off",
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ),
          Divider(
            color: Colors.white30,
          ),
          ListTile(
            title: Text(
              "Groups",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              "My contacts",
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ),
          ListTile(
            title: Text(
              "Live location",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              "None",
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ),
          ListTile(
            title: Text(
              "Calls",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              "Silence unknown callers",
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ),
          ListTile(
            title: Text(
              "Blocked contacts",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              "12",
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ),
          ListTile(
            title: Text(
              "App lock",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              "Disabled",
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ),
          ListTile(
            title: Text(
              "Chat lock",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
          ),
            ListTile(
            title: Text(
              "Advanced",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
            ),
            subtitle: Text(
              "Protect IP adress in calls",
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}
