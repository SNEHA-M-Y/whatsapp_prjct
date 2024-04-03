import 'package:flutter/material.dart';
import 'package:whatsapp_prjct/update.dart';

class callpg extends StatefulWidget {
  const callpg({super.key});

  @override
  State<callpg> createState() => _callpgState();
}

class _callpgState extends State<callpg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 27, 32),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 27, 32),
        leading: Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Text(
            "Calls",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w400),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.qr_code_scanner_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search_outlined,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
              ))
        ],
        leadingWidth: 100,
      ),
      bottomNavigationBar: BottomAppBar(
        height: 95,
        color: Colors.transparent,
        child: Row(
          children: [
            Column(
              children: [
                IconButton(
                  onPressed: () {Navigator.pop(context);},
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
                    Navigator.pushReplacement(
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
                    onPressed: () {},
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add_ic_call_outlined,
        ),
        backgroundColor: Color.fromARGB(255, 37, 211, 102),
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
              subtitle: Row(
                children: [
                  Icon(
                    Icons.arrow_outward_outlined,
                    color: Color.fromARGB(255, 9, 211, 102),
                    size: 15,
                  ),
                  Text(
                    time[index],
                    style: TextStyle(color: Colors.white54),
                  ),
                ],
              ),
              trailing: Icon(
                Icons.phone_outlined,
                color: Color.fromARGB(255, 9, 211, 102),
              ));
        },
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
  "Yesterday,2:50 PM",
  "Yesterday 1:30 PM",
  "Yesterday 12:05 PM",
  "Yesterday 11:30 AM",
  "Yesterday 10:15 AM",
  "Yesterday 9:00 AM",
  "March 30 2:56 PM",
  "March 30 1:05 PM",
  "March 29 12:50 PM",
  "March 28 11:20 AM",
  "March 27 10:24 AM",
  "March 26 9:00 AM",
  "March 25 8:46 AM",
  "March 24 7:50 AM",
  "March 23 6:00 PM",
  "March 23 12:09 PM",
];
