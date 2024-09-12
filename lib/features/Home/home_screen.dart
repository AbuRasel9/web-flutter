import 'package:flutter/material.dart';

import 'package:imarket/features/Home/sub_view/super_affilate_zone/super_affilate_zone.dart';
import 'package:imarket/features/Home/widget/comming_soon_widget.dart';
import 'package:imarket/features/Home/widget/home_card_item.dart';
import 'package:imarket/features/Home/widget/web_view_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> cardItems = [
    "AFFILIATE ZONE",
    "SUPER AFFILIATE ZONE",
    "BEST INVESTMENT ZONE",
    "B.P.N PROGRAMME",
    "X-STORE",
    "E-COMMERCE",
    "FLUTTER"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff020811).withOpacity(.8),
        title: const Text(
          "Slidding",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Stack(
          children: [
            Image.asset(
              "images/App Back2.jpg",
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 10 / 8,
                ),
                padding: const EdgeInsets.all(10),
                itemCount: cardItems.length,
                itemBuilder: (context, index) {
                  return HomeCardItem(
                    onTap: () {
                      if (cardItems[index] == "BEST INVESTMENT ZONE")
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CustomViewWidget(
                                webLink:
                                    "https://moboxmarket.flysfare.com/public/login"),
                          ),
                        );
                      else if (cardItems[index] == "SUPER AFFILIATE ZONE") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SuperAffilateZoneScreen(),
                          ),
                        );
                      }
                      else if (cardItems[index] == "FLUTTER") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CustomViewWidget(webLink: "https://flutter.dev/"),
                          ),
                        );
                      }
                      
                      else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CommingSoonWidget()));
                      }
                    },
                    backgroundColor: Color(0xff020811).withOpacity(.8),
                    borderRadius: 8,
                    child: Text(
                      cardItems[index],
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
