import 'package:flutter/material.dart';
import 'package:florist/screens/secondscreen.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(238, 63, 0, 1.0),
        title: const Text('Hakkımızda Sayfası'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                width: 400,
                height: 200,
                child: Text("1999 yılında sizlere hizmet vermeye başlayan çiçekçimiz, 22 yıldır en kaliteli çiçekleri sizlerle buluşturmaya özen gösteriyor. Türkiye'nin 12 ilinde bulunan bayilerimize her gün 07.00- 00.00 saatleri içerisinde ulaşabilirsiniz.",
                    style: new TextStyle(
                      fontSize: 20, letterSpacing: 1, color: const Color.fromRGBO(
                        103, 72, 54, 0.8980392156862745),)),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromRGBO(238, 63, 0, 1.0),
              ),
              child: Text("Geri Dön"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}