import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:whatsapp_prjct/chatscreen.dart';

class otpscrn extends StatefulWidget {
  const otpscrn({super.key});

  @override
  State<otpscrn> createState() => _otpscrnState();
}

class _otpscrnState extends State<otpscrn> {
  String? phonenumber;
  @override
  Widget build(BuildContext context) {
    phonenumber = ModalRoute.of(context)?.settings.arguments as String;
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
        backgroundColor: Color.fromARGB(255, 9, 27, 32),
        title: Row(
          children: [
            Text(
              "Verify  + ${phonenumber}",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 40,
            ),
            Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
            )
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("images/verify.png"),
            backgroundColor: Color.fromARGB(55, 5, 163, 123),
            radius: 40,
          ),
          Column(
            children: [
              Text(
                "Use your other phone to confirm moving Whatsapp to this",
                style: TextStyle(color: Colors.white),
              ),
              Text(
                "one",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Open Whatsapp on your other phone to get the 6-digit code",
                style: TextStyle(color: Colors.white),
              ),
              OtpTextField(
                numberOfFields: 6,
                enabledBorderColor: Colors.white38,
                focusedBorderColor: Color.fromARGB(255, 5, 163, 123),
                showFieldAsBox: false,
                borderWidth: 4,
                onSubmit: (String code) {
                  if (code == "456789") {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => chatscrn(),
                        ));
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Text(
                          "Invalid OTP",
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Color.fromARGB(178, 22, 46, 53),
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    );
                  };
                  
                },
                textStyle: TextStyle(color: Colors.white),
                cursorColor: Colors.white,
                fillColor: Colors.white,
                borderColor: Colors.white,
              ),
              SizedBox(
                height: 60,
              ),
              Column(
                children: [
                  Text(
                    "Enter 6-digit code",
                    style: TextStyle(color: Colors.white38),
                  ),
                  Text(
                    "Need help getting a code?",
                    style: TextStyle(
                        color: Colors.white54, fontWeight: FontWeight.w600),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "You can request a new code in",
                        style: TextStyle(color: Colors.white38),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "1:02",
                        style: TextStyle(
                            color: Colors.white54, fontWeight: FontWeight.w600),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
