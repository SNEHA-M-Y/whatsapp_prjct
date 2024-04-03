import 'package:country_picker/country_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:whatsapp_prjct/otpscreen.dart';

class verifypg extends StatefulWidget {
  const verifypg({super.key});

  @override
  State<verifypg> createState() => _verifypgState();
}

class _verifypgState extends State<verifypg> {
  Country country = CountryParser.parseCountryCode("IN");
  void showpicker() {
    showCountryPicker(
        context: context,
        countryListTheme: CountryListThemeData(bottomSheetHeight: 700),
        onSelect: (country) {
          setState(() {
            this.country = country;
          });
        });
  }

  TextEditingController phonenumbercontroller = TextEditingController();
  String? phonenumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 27, 32),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 9, 27, 32),
        title: Row(
          children: [
            Text(
              "Enter your phone number ",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Text(
                "Whatsapp will need to verify your phone number.Carrier",
                style: TextStyle(color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "charges may apply.",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    "What's my number?",
                    style: TextStyle(color: Colors.blue[300]),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 180,
                    child: GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: showpicker,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${country.name}",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Color.fromARGB(255, 5, 163, 123),
                  )
                ],
              ),
              Divider(
                color: Color.fromARGB(255, 5, 163, 123),
                indent: 70,
                endIndent: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 27),
                          child: Row(
                            children: [
                              Text(
                                "+",
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${country.phoneCode}",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Color.fromARGB(255, 5, 163, 123),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  SizedBox(
                      width: 180,
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                            hintText: "phone number",
                            hintStyle: TextStyle(color: Colors.white54),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color.fromARGB(255, 5, 163, 123)),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 5, 163, 123)))),
                        controller: phonenumbercontroller,
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
              SizedBox(
                height: 350,
              ),
              ElevatedButton(
                onPressed: () {
                  if (phonenumbercontroller.text.length ==
                      country.example.length) {
                    phonenumber =
                        country.phoneCode + phonenumbercontroller.text;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => otpscrn(),
                            settings: RouteSettings(arguments: phonenumber)));
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        content: Text(
                          "Invalid Number",
                          style: TextStyle(color: Colors.white),
                        ),
                        backgroundColor: Color.fromARGB(178, 22, 46, 53),
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    );
                  }
                },
                child: Text(
                  "Next",
                  style: TextStyle(color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 5, 163, 123)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
