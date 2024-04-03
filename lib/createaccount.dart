import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:language_picker/language_picker.dart';
import 'package:whatsapp_prjct/verificationpg.dart';

class createaccnt extends StatefulWidget {
  const createaccnt({super.key});

  @override
  State<createaccnt> createState() => _createaccntState();
}

class _createaccntState extends State<createaccnt> {
  String currentlanguage="English";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 27, 32),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Image.asset(
                "images/whatsappLoading.png",
              ),
            ),
            Text(
              "Welcome to Whatsapp",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Read our",
                    style: TextStyle(color: Colors.white38),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Privacy Policy",
                  style: TextStyle(color: Colors.blue[300]),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Tap\"Agree and Continue\" to",
                  style: TextStyle(color: Colors.white38),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 90),
                  child: Text(
                    "accept the",
                    style: TextStyle(color: Colors.white38),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Terms of Service.",
                  style: TextStyle(color: Colors.blue[300]),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => LanguagePickerDialog(
                    title: Text(currentlanguage),
                    isSearchable: true,
                    onValuePicked: (Language) =>setState(() {
                      currentlanguage=Language.name;
                  }) ,itemBuilder: (language) =>Text(language.name),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.language_outlined,
                    color: Color.fromARGB(255, 5, 163, 123),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    currentlanguage,
                    style: TextStyle(color: Color.fromARGB(255, 5, 163, 123)),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color.fromARGB(255, 5, 163, 123),
                  )
                ],
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(169, 35, 39, 43),
                  fixedSize: Size(250, 20)),
            ),
            SizedBox(
              height: 120,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => verifypg(),));
              },
              child: Text(
                "Agree and Continue",
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 5, 163, 123),
                  fixedSize: Size(250, 20)),
            )
          ],
        ),
      ),
    );
  }
}
