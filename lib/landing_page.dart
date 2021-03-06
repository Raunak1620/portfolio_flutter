import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String desc =
      "Experienced Web | Android Developer with over 1 years of experience working on different projects and trying to stay updated with the technologies in this changing world.";

  void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color(0xff213A50), const Color(0xff071930)],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(80)),
                child: Image.asset(
                  "assets/profile.jpg",
                  width: 180,
                  height: 180,
                )),
            SizedBox(
              height: 12,
            ),
            Text(
              "Raunak Raj",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 13),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text(
                desc,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Connect With me",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    _launchURL("https://www.facebook.com/raunak.rajput.5817");
                  },
                  child: Image.asset(
                    "assets/facebook.png",
                    width: 20,
                    height: 20,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                GestureDetector(
                    onTap: () {
                      _launchURL("https://www.instagram.com/mr_developer16/");
                    },
                    child: Image.asset("assets/instagram.png",
                        width: 20, height: 20)),
                SizedBox(
                  width: 12,
                ),
                GestureDetector(
                    onTap: () {
                      _launchURL("");
                    },
                    child: Image.asset("assets/linkedin.png",
                        width: 20, height: 20)),
                SizedBox(
                  width: 12,
                ),
                GestureDetector(
                    onTap: () {
                      _launchURL("https://twitter.com/raunakr16882546?s=09");
                    },
                    child: Image.asset("assets/twitter.png",
                        width: 20, height: 20)),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                _launchURL(
                    "https://drive.google.com/file/d/1-lgfUcURdSwpik3HiNHEouYihYjDepGp/view?usp=sharing");
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    gradient: LinearGradient(colors: [
                      const Color(0xffA2834D),
                      const Color(0xffBC9A5F)
                    ])),
                child: Text(
                  "View my Resume",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
