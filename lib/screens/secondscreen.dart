import 'package:flutter/material.dart';
import 'package:florist/screens/firstscreen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(238, 63, 0, 1.0),
        title: const Text('Bilgi Sayfası'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(238, 63, 0, 1.0),
                ),
                icon: const Icon(Icons.help,size: 25,),
                label: const Text('Yardım'),
                onPressed: () => Navigator.pushNamed(context, '/helpscreen'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(238, 63, 0, 1.0),
                ),
                icon: Icon(Icons.video_camera_back_outlined,size: 25,),
                label: const Text('Video'),
                onPressed: () {
                  Navigator.pushNamed(context, '/videopage');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(238, 63, 0, 1.0),
                ),
                icon: Icon(Icons.question_answer,size: 25,),
                label: const Text('Hakkımızda'),
                onPressed: () {
                  Navigator.pushNamed(context, '/aboutus');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(238, 63, 0, 1.0),
                ),
                icon: const Icon(Icons.favorite_border,size: 25,),
                label: const Text('Canlı Çiçekler'),
                onPressed: () {
                  Navigator.pop(context, 'Seçiminizi yapabilirsiniz.');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(238, 63, 0, 1.0),
                ),
                icon: const Icon(Icons.favorite,size: 25,),
                label: const Text('Kuru Çiçekler'),
                onPressed: () {
                  Navigator.pop(context, 'Seçiminizi yapabilirisniz.');
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text("Geri Dön"),
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromRGBO(238, 63, 0, 1.0),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FirstScreen()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}