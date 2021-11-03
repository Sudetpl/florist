import 'package:flutter/material.dart';
import 'package:florist/screens/secondscreen.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String yazi = " Hanımeli, Caprifoliaceae familyasına ait, çalı ve/veya sarmaşık grubundan bir bitkidir. Yaklaşık 180 türü vardır, bunun 100 kadarı Çin'dedir. Avrupa ve Kuzey Amerika'da 20şer türü vardır. En çok bilinen türleri Lonicera periclymenum, Lonicera japonica ve Lonicera sempervirens dir.";
    return Scaffold(
      appBar: AppBar(
        title: const Text('Florist'),
        backgroundColor: Color.fromRGBO(238, 63, 0, 1.0),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: (){
              },

              child: Icon(
                Icons.help,
                size: 26.0,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add_business_rounded),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.add_location_alt),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            Image.asset("asset/image/flower.png"),
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Text(
                  'Çiçek Çeşitleri', style: TextStyle(color: Color.fromRGBO(
                  229, 32, 184, 1.0), fontSize: 20)),

            ),
            ListTile(
              title: const Text(
                  'Hanımeli', style: TextStyle(color: Color.fromRGBO(
                  229, 32, 184, 1.0), fontSize: 16)),
              leading:  Icon(Icons.looks_one, color: Color.fromRGBO(
                229, 32, 184, 1.0,)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                  'Yasemin', style: TextStyle(color: Color.fromRGBO(
                  229, 32, 184, 1.0), fontSize: 16)),
              leading:  Icon(Icons.looks_two, color: Color.fromRGBO(
                229, 32, 184, 1.0,)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                  'Papatya', style: TextStyle(color: Color.fromRGBO(
                  229, 32, 184, 1.0), fontSize: 16)),
              leading:  Icon(Icons.looks_3, color: Color.fromRGBO(
                229, 32, 184, 1.0,)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                  'Şakayık', style: TextStyle(color: Color.fromRGBO(
                  229, 32, 184, 1.0), fontSize: 16)),
              leading:  Icon(Icons.looks_4, color: Color.fromRGBO(
                229, 32, 184, 1.0,)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                  'Ay Çiçeği', style: TextStyle(color: Color.fromRGBO(
                  229, 32, 184, 1.0), fontSize: 16)),
              leading:  Icon(Icons.looks_5, color: Color.fromRGBO(
                229, 32, 184, 1.0,)),
              onTap: () {
                Navigator.pop(context);
              },
            ),

          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              child: Image.asset("asset/image/logo.png"),
              width: 300,
              height: 300,
              padding: const EdgeInsets.all(10.0),
              alignment: Alignment.bottomCenter,
            ),
            Container(
              width: 300,
              height: 180,
              padding: const EdgeInsets.all(20),
              child: new RichText(
                maxLines: 5,
                text: new TextSpan(
                  children: <TextSpan>[
                    new TextSpan(text: yazi,
                        style: new TextStyle(
                          fontSize: 20, letterSpacing: 1, color: const Color.fromRGBO(
                            103, 72, 54, 0.8980392156862745),)),
                  ],
                ),
              ),
            ),
            Container(
              width: 200,
              height: 100,
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(25.0)),
                  child: Image.asset("asset/image/flower.gif")),
              alignment: Alignment.bottomCenter,
            ),
            SelectionButton(),
          ],
        ),
      ),
    );
  }
}

class SelectionButton extends StatelessWidget {
  const SelectionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: const Color.fromRGBO(238, 63, 0, 1.0),
      ),
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: const Text('Bilgi Al'),
    );
  }

  void _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SecondScreen()),
    );
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }
}