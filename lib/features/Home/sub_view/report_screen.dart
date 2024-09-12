import 'package:flutter/material.dart';
import 'package:imarket/features/Home/widget/home_card_item.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  List<String>_cardItems=["INCOME HISTORY","DEPOSIT HISTORY","TOTAL HISTORY"];
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
