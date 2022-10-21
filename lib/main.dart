import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart'; Unused Dependency
import 'package:url_launcher/url_launcher.dart';

// app build process is triggered here
void main() => runApp(const MyApp());

String subj = 'This is a test email';
String body = 'This is a test email body';
String url = 'rabia.iftikhar@faculty.muet.edu.pk';
_sendingMails() async {
  var url = Uri.parse(
      "mailto:rabia.iftikhar@faculty.muet.edu.pk?subject=$subj&body=$body");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

_sendingSMS() async {
  var url = Uri.parse("sms:966738292");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Course: Mobile Application Development'),
          backgroundColor: Colors.purple,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 200.0,
                ),
                const Text(
                  'To send Feedback',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 20.0,
                ),
                const Text(
                  'Email me at:',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 10.0,
                ),
                ElevatedButton(
                  onPressed: _sendingMails,
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(100, 50)),
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(5.0)),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(color: Colors.black),
                    ),
                  ),
                  child: const Text('Here', style: TextStyle(fontSize: 20.0)),
                ), // ElevatedButton

                Container(
                  height: 20.0,
                ),
                const Text(
                  'Or Send SMS at:',
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Color.fromARGB(255, 0, 0, 0),
                    //fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 10.0,
                ),
                ElevatedButton(
                  onPressed: _sendingSMS,
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(100, 50)),
                    backgroundColor: MaterialStateProperty.all(Colors.purple),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(5.0)),
                    textStyle: MaterialStateProperty.all(
                      const TextStyle(color: Colors.black),
                    ),
                  ),
                  child: const Text('Here', style: TextStyle(fontSize: 20.0)),
                ), // ElevatedButton
              ],
            ),
          ),
        ),
      ),
    );
  }
}
