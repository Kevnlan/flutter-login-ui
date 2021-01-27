import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  static String tag = 'home-page';

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  static String tag = 'home-page';

  @override
  Widget build(BuildContext context) {

    final alucard = Hero(
        tag: 'hero',
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: CircleAvatar(
            radius: 72.0,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('assets/mini.jpg'),
          ),
        )
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Kevin',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec vel tortor non est commodo posuere ac id nunc. Proin aliquet, lorem at faucibus luctus, odio ex sodales urna, eget ullamcorper massa mi sed lorem. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec sodales ligula id libero rutrum fringilla. Curabitur blandit efficitur sodales. Curabitur nec erat blandit, dignissim augue quis, interdum justo. Donec sit amet turpis metus. Aenean vehicula ante eu nulla aliquet malesuada. Nulla facilisi. Sed et nibh lorem. Praesent semper, diam et fringilla commodo, turpis est dictum nibh, et dapibus enim lacus dictum urna. Duis quis convallis nisi. Ut iaculis augue eu elementum condimentum. Aenean eu posuere nibh. Praesent quis nulla scelerisque, suscipit leo ac, hendrerit lacus.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent
        ])
      ),
      child: Column(children: <Widget>[
        alucard,welcome,lorem
      ],),
    );

    return Scaffold(
      body: body,
    );
  }
}
