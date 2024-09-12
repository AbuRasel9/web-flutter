import 'package:flutter/material.dart';
import 'package:imarket/features/Home/widget/comming_soon_widget.dart';
import 'package:imarket/features/Home/widget/home_card_item.dart';
import 'package:imarket/features/Home/widget/web_view_widget.dart';

class WithdrawScreen extends StatefulWidget {
  const WithdrawScreen({super.key});

  @override
  State<WithdrawScreen> createState() => _WithdrawScreenState();
}

class _WithdrawScreenState extends State<WithdrawScreen> {
  List<String> _cardItems = [
    "WITHDRAW",
    "WITHDRAW HISTORY",
    "DEPOSIT",
    "DEPOSIT HISTORY",
    "USER TRANSFER"
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
                      if (_cardItems[index] == "WITHDRAW") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CustomViewWidget(
                                    webLink:
                                        "https://moboxmarket.flysfare.com/public/user/withdraw")));
                      } else if (_cardItems[index] == "WITHDRAW HISTORY") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CustomViewWidget(
                                    webLink:
                                        "https://moboxmarket.flysfare.com/public/user/withdraw/history")));
                      } else if (_cardItems[index] == "DEPOSIT") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CustomViewWidget(
                                    webLink:
                                        "https://moboxmarket.flysfare.com/public/user/deposit")));
                      } else if (_cardItems[index] == "DEPOSIT HISTORY") {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CustomViewWidget(
                                    webLink:
                                        "https://moboxmarket.flysfare.com/public/user/deposit/history")));
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CommingSoonWidget()));
                      }
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => navigateScreen[index],
                      //   ),
                      // );
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
