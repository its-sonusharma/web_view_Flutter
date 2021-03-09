import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false ,
    home: Home(),
  )
  );
}
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web_View Demo'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      backgroundColor: Colors.blueGrey[400],
      body:Container(
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Webview()));
          },
          child: Text('See How It Look'),
        )
      ),

    );
  }
}
class Webview extends StatefulWidget {
  @override
  _WebviewState createState() => _WebviewState();
}

class _WebviewState extends State<Webview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web_View'),
        centerTitle: true,
      ),
      body: WebView(
      initialUrl: 'https://material.io',
      javascriptMode: JavascriptMode.unrestricted,
    ) ,
    );
  }
}
