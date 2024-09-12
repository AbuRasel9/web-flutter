import 'package:flutter/material.dart';
import 'package:imarket/features/Home/widget/comming_soon_widget.dart';
import 'package:imarket/features/Home/widget/home_card_item.dart';
import 'package:imarket/features/Home/widget/web_view_widget.dart';

class XNetworkScreen extends StatefulWidget {
  const XNetworkScreen({super.key});

  @override
  State<XNetworkScreen> createState() => _XNetworkScreenState();
}

class _XNetworkScreenState extends State<XNetworkScreen> {
  List<String> _cardItems = [
    "MY ENROLLER",
    "MY DIRECT TEAM",
    "MY X-MARKET TEAM",
    "MY TREE"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset("images/App Back2.jpg",height: double.infinity,width: double.infinity,fit: BoxFit.cover,),

            GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 10 / 8,
                ),
                padding: const EdgeInsets.all(10),
                itemCount: _cardItems.length,
                itemBuilder: (context, index) {
                  return HomeCardItem(
                    onTap: () {
                      if (_cardItems[index] == "MY DIRECT TEAM") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CustomViewWidget(
                                webLink:
                                    "https://moboxmarket.flysfare.com/public/user/direct/ibo/team"),
                          ),
                        );
                      }
                      else if (_cardItems[index] == "MY X-MARKET TEAM") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CustomViewWidget(
                                webLink:
                                    "https://moboxmarket.flysfare.com/public/user/direct/ibo"),
                          ),
                        );
                      }
                     else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CommingSoonWidget(),
                          ),
                        );
                      }
                    },
                    backgroundColor: Color(0xff020811),
                    borderRadius: 8,
                    child: Text(
                      _cardItems[index],
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
