import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import 'fees.dart';
import 'how.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  Future<void> share() async {
    await SharePlus.instance.share(
       ShareParams(
      uri: Uri.parse('https://play.google.com/store/apps/details?id=com.palmistrylive.readings'),
      subject: 'Palmistry Live Readings',)
    );
  }

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            "assets/images/bgBlur.png",
          ),
        )),
        child: SingleChildScrollView(
          child: ListView(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.35,
                child: Image.asset(
                  "assets/images/palm.png",
                  isAntiAlias: true,
                  fit: BoxFit.fill, // Width,
                  alignment: Alignment.topCenter,
                ),
              ),

              // ......

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Palmistry Live Readings",
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Talk to Know Your Future!",
                          style: TextStyle(fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            onTap: () async => await _launchInBrowser(
                                "https://api.whatsapp.com/send?phone=+918247625696&text=Hi, I'm here from Palmistry Live Readings"),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.yellow.shade800,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 4),
                                  child: Text(
                                    "Connect With Palmist",
                                    style: TextStyle(fontSize: 26),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // .....

              GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.0,
                  mainAxisSpacing: 15.0,
                  shrinkWrap: true,
                  children: [
                    //
                    ItemsWidget(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Fees()));
                      },
                      titleText: "Fees",
                      imagePath: "assets/images/cost.png",
                      color: Colors.blue,
                    ),
                    // Add more items here as needed
                    ItemsWidget(
                      onTap: () {
                        // Handle onTap
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => How()));
                      },
                      titleText: "How It Works",
                      imagePath: "assets/images/settings.png",
                      color: Colors.blue.shade900,
                    ),
                    ItemsWidget(
                      onTap: () async => await _launchInBrowser(
                          "https://sites.google.com/view/palmistry-live-readings"),
                      titleText: "Policies",
                      imagePath: "assets/images/policy.png",
                      color: Colors.green,
                    ),
                    ItemsWidget(
                      onTap: () async {
                        await share();
                        // Handle onTap
                      },
                      titleText: "Share",
                      imagePath: "assets/images/share.png",
                      color: Colors.blueAccent,
                    ),
                    //
                  ])
            ],
          ),
        ),
      ),
    );
  }
}

class ItemsWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String titleText;
  final String imagePath;
  final Color color;
  const ItemsWidget({
    super.key,
    required this.onTap,
    required this.titleText,
    required this.imagePath,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: color,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: 100, // Adjust image width as needed
                height: 100, // Adjust image height as needed
              ),
              SizedBox(height: 4),
              Text(
                titleText,
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
