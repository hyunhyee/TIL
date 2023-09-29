import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('AriAri'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  if (controller != null) {
                    controller!.loadUrl('https://blog.codefactory.ai');
                  }
                },
                icon: Icon(
                  Icons.home,
                ))
          ],
        ),
        body: WebView(
          onWebViewCreated: (WebViewController controlle) {
            this.controller = controlle;
          },
          initialUrl: 'https://blog.codefactory.ai',
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
