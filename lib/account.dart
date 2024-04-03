import 'package:flutter/material.dart';

class accountpg extends StatefulWidget {
  const accountpg({super.key});

  @override
  State<accountpg> createState() => _accountpgState();
}

class _accountpgState extends State<accountpg> {
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
          "Account",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              "Security notifications",
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(Icons.security_outlined,color: Colors.white54,),
          ),
          ListTile(
            title: Text(
              "Passkeys",
              style: TextStyle(color: Colors.white),
            ),
            leading: Image.asset("images/passkey.png",scale: 2,)
          ),
           ListTile(
            title: Text(
              "Email address",
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(Icons.mail_outlined,color: Colors.white54,),
          ),
           ListTile(
            title: Text(
              "Two-step verification",
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(Icons.password_outlined,color: Colors.white54,),
          ),
           ListTile(
            title: Text(
              "Change number",
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(Icons.send_to_mobile_outlined,color: Colors.white54,),
          ),
           ListTile(
            title: Text(
              "Request account info",
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(Icons.insert_drive_file_outlined,color: Colors.white54,),
          ),
           ListTile(
            title: Text(
              "Remove account",
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(Icons.person_remove_alt_1_outlined,color: Colors.white54,),
          ),
           ListTile(
            title: Text(
              "Delete account",
              style: TextStyle(color: Colors.white),
            ),
            leading: Icon(Icons.delete_outline_outlined,color: Colors.white54,),
          ),
        ],
      ),
    );
  }
}
