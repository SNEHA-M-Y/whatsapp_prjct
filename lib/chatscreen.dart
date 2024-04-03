import 'package:flutter/material.dart';
import 'package:whatsapp_prjct/calls.dart';
import 'package:whatsapp_prjct/settings.dart';
import 'package:whatsapp_prjct/update.dart';

class chatscrn extends StatefulWidget {
  const chatscrn({super.key});

  @override
  State<chatscrn> createState() => _chatscrnState();
}

class _chatscrnState extends State<chatscrn> {
  int? selectedvalue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 33, 33, 33),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 33, 33, 33),
        leading: Padding(
          padding: const EdgeInsets.only(top: 10, left: 15),
          child: Text(
            "Whatsapp",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w700),
          ),
        ),
        leadingWidth: 150,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.qr_code_scanner_outlined),
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.camera_alt_outlined),
              color: Colors.white,
            ),
            SizedBox(
              width: 5,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_outlined),
              color: Colors.white,
            ),
            PopupMenuButton(
                onSelected: (value) {
                  setState(() {
                    selectedvalue = value;
                    if (selectedvalue == 5) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => settingspg(),
                          ));
                    }
                  });
                },
                itemBuilder: (context) {
                  return [
                    PopupMenuItem<int>(
                      child: Row(
                        children: [
                          Icon(
                            Icons.people_alt_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "New group",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      value: 0,
                    ),
                    PopupMenuItem<int>(
                      child: Row(
                        children: [
                          Icon(
                            Icons.campaign_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "New broadcast",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      value: 0,
                    ),
                    PopupMenuItem<int>(
                      child: Row(
                        children: [
                          Icon(
                            Icons.devices_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Linked devices",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      value: 2,
                    ),
                    PopupMenuItem<int>(
                      child: Row(
                        children: [
                          Icon(
                            Icons.star_border,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Starred messages",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      value: 3,
                    ),
                    PopupMenuItem<int>(
                      child: Row(
                        children: [
                          Icon(
                            Icons.payment_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Payments",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      value: 4,
                    ),
                    PopupMenuItem<int>(
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Settings",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      value: 5,
                    ),
                    PopupMenuItem<int>(
                      child: Row(
                        children: [
                          Icon(
                            Icons.sync_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Switch accounts",
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      value: 6,
                    ),
                  ];
                },
                iconColor: Colors.white,
                color: Color.fromARGB(255, 22, 46, 53)),
          ],
        ),
        centerTitle: false,
      ),
      body: ListView.builder(
        itemCount: pictures.length,
        itemExtent: 80,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(pictures[index]),
              radius: 25,
            ),
            title: Text(
              name[index],
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            subtitle: Text(
              "Hello",
              style: TextStyle(color: Colors.white54),
            ),
            trailing: Text(
              time[index],
              style: TextStyle(color: Color.fromARGB(255, 5, 163, 123)),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_comment_outlined),
        backgroundColor: Color.fromARGB(255, 37, 211, 102),
      ),
      bottomNavigationBar: BottomAppBar(
        height: 95,
        color: Colors.transparent,
        child: Row(
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.chat_rounded),
                  color: Colors.white,
                ),
                Text(
                  "chats",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => updatepg(),
                        ));
                  },
                  icon: Image.asset(
                    "images/statusicon.png",
                    width: 30,
                  ),
                ),
                Text(
                  "Updates",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.groups_outlined,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Communities",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => callpg(),
                          ));
                    },
                    icon: Icon(
                      Icons.phone,
                      color: Colors.white,
                    )),
                Text(
                  "Calls",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

List pictures = [
  "images/dp1.jpg",
  "images/dp2.webp",
  "images/dp3.webp",
  "images/dp4.webp",
  "images/dp5.webp",
  "images/dp6.jpg",
  "images/dp7.jpg",
  "images/dp8.jpg",
  "images/dp9.webp",
  "images/dp10.jpg",
  "images/dp11.jpg",
  "images/dp12.jpg",
  "images/dp13.jpg",
  "images/dp14.jpg",
  "images/dp15.jpg",
  "images/dp16.jpg",
];
List name = [
  "Arjun",
  "Ameya",
  "Aadya",
  "Adwaith",
  "Ram",
  "Sherin",
  "John",
  "Jerry",
  "Jeena",
  "Nimna",
  "Vivek",
  "Merin",
  "Miya",
  "Shreya",
  "Sandra",
  "Shabnam",
];
List time = [
  "1:31",
  "12:50",
  "12:25",
  "12:10",
  "12:00",
  "11:45",
  "11:30",
  "11:11",
  "10:58",
  "9:10",
  "8:00",
  "Yesterday",
  "Yesterday",
  "3/28/24",
  "3/28/24",
  "3/25/24"
];
