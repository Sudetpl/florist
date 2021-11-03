import 'package:flutter/material.dart';
import 'package:florist/screens/secondscreen.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(238, 63, 0, 1.0),
        title: const Text('Yardım Sayfası'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("Yardım için bize ulaşabilirsiniz."
                  "+905662738912",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, ),
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