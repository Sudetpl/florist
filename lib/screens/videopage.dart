import 'package:flutter/material.dart';
import 'package:florist/screens/helpscreen.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String videoID = 'ORzGsBu4Lms';

    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: videoID,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end:
          Alignment(0.8, 0.0),
          colors: <Color>[
            Color(0xffe520b8),
            Color(0xffee2400),
            Color(0xffee3f00),
          ],
          tileMode: TileMode.repeated,
        ),
      ),
      child: Container(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: YoutubePlayer(
                    controller: _controller,
                    liveUIColor: Colors.red,
                    showVideoProgressIndicator: true,
                  ),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpScreen()));
                  },
                ),
              ),
            ],
          )
      ),
    );
  }
}