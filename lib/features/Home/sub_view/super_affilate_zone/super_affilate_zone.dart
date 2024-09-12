import 'package:flutter/material.dart';
import 'package:imarket/features/Home/sub_view/report_screen.dart';
import 'package:imarket/features/Home/sub_view/withdraw_screen.dart';
import 'package:imarket/features/Home/sub_view/x_network_screen.dart';
import 'package:imarket/features/Home/widget/comming_soon_widget.dart';
import 'package:imarket/features/Home/widget/home_card_item.dart';
import 'package:imarket/features/Home/widget/web_view_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SuperAffilateZoneScreen extends StatefulWidget {
  const SuperAffilateZoneScreen({super.key});

  @override
  State<SuperAffilateZoneScreen> createState() =>
      _SuperAffilateZoneScreenState();
}

class _SuperAffilateZoneScreenState extends State<SuperAffilateZoneScreen> {
  List<String> cardListItem = [
    'DASHBOARD',
    "X ACCOUNT",
    "X NETWORK",
    "INVESMENT ZONE",
    "WITHDRAW",
    "ORDERS",
    "REPORT",
    "SUPPORT",
    "INFORMATION"
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
              itemCount: cardListItem.length,
              itemBuilder: (context, index) {
                return HomeCardItem(
                  onTap: () {
                    if (index == 2) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => XNetworkScreen(),
                        ),
                      );
                    } else if (cardListItem[index] == "DASHBOARD") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CustomViewWidget(
                              webLink:
                                  "https://moboxmarket.flysfare.com/public/user/dashboard"),
                        ),
                      );
                    } else if (index == 4) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WithdrawScreen(),
                        ),
                      );
                    } else if (index == 6) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReportScreen(),
                        ),
                      );
                    }
                    else if(cardListItem[index]=="ORDERS"){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CustomViewWidget(
                              webLink:
                              "https://moboxmarket.flysfare.com/public/user/orders"),
                        ),
                      );


                    }else{
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>CommingSoonWidget()));
                    }
                  },
                  backgroundColor: Color(0xff020811),
                  borderRadius: 8,
                  child: Text(
                    cardListItem[index],
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                );
              }),
        ],
      ),
    ));
  }
}
