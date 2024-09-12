import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomViewWidget extends StatefulWidget {
  final String webLink;
  const CustomViewWidget({super.key, required this.webLink});

  @override
  State<CustomViewWidget> createState() => _CustomViewWidgetState();
}

class _CustomViewWidgetState extends State<CustomViewWidget> {
  late WebViewController controller;
  var loadingPercentage = 0;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          setState(() {
            loadingPercentage = 0;
          });
        },
        onProgress: (progress) {
          setState(() {
            loadingPercentage = progress;
          });
        },
        onPageFinished: (url) {
          setState(() {
            loadingPercentage = 100;
          });
        },
      ))
      ..loadRequest(
        Uri.parse(widget.webLink),
      );
  }
  @override
  Widget build(BuildContext context) {
    print("-----------------------------${widget.webLink}");
    return Scaffold(

      body: SafeArea(
        child: Stack(
          children: [
            WebViewWidget(

              controller: controller,
            ),
            loadingPercentage < 100
                ? LinearProgressIndicator(
              color: Colors.red,
              value: loadingPercentage / 100.0,
            )
                : Container()
          ],
        ),
      ),


    );
  }
}
