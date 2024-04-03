import 'package:flutter/material.dart';

class profilepg extends StatefulWidget {
  const profilepg({super.key});

  @override
  State<profilepg> createState() => _profilepgState();
}

class _profilepgState extends State<profilepg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 27, 32),
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 9, 27, 32),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.white,
            )),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/dp3.webp"),
                  radius: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80, top: 75),
                  child: CircleAvatar(
                    child: Icon(Icons.camera_alt_outlined),
                    backgroundColor: Color.fromARGB(255, 37, 211, 102),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.person_2_outlined,
              color: Colors.white54,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name",
                  style: TextStyle(color: Colors.white54, fontSize: 12),
                ),
                Text(
                  "Selena",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                )
              ],
            ),
            subtitle: Text(
              "This is not your username or pin.This name will be visible to your Whatsapp contacts",
              style: TextStyle(color: Colors.white54, fontSize: 12),
            ),
            trailing: Icon(
              Icons.edit_outlined,
              color: Color.fromARGB(255, 37, 211, 102),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.info_outlined,
              color: Colors.white54,
            ),
            title: Text(
              "About",
              style: TextStyle(color: Colors.white54, fontSize: 12),
            ),
            trailing: Icon(
              Icons.edit_outlined,
              color: Color.fromARGB(255, 37, 211, 102),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.phone_outlined,
              color: Colors.white54,
            ),
            title: Text(
              "Phone",
              style: TextStyle(color: Colors.white54, fontSize: 12),
            ),
            subtitle: Text(
              "+91 98756 43210",
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
