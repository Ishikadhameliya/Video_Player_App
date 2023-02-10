import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../res/globals.dart';

class video_page extends StatefulWidget {
  const video_page({Key? key}) : super(key: key);

  @override
  State<video_page> createState() => _video_pageState();
}

late VideoPlayerController videoPlayerController;
late ChewieController chewieController;

class _video_pageState extends State<video_page> {
  int index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    initvideo();
  }

  @override
  void dispose() {
    super.dispose();
    videoPlayerController.dispose();
    chewieController.dispose();
  }

  initvideo() async {
    Videos.contrllor.clear();
    for (int i = 0; i < Videos.all_videos[Videos.initvalue].length; i++) {
      videoPlayerController = VideoPlayerController.network(
          "${Videos.all_videos[Videos.initvalue][i]}")
        ..initialize().then((value) => setState(() {}));
      Videos.contrllor.add(videoPlayerController);
    }
    print(Videos.initvalue);
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    // (Videos.all_Videos)
    //     ? null :
    chewieController = ChewieController(
      videoPlayerController: Videos.contrllor[index],
      autoPlay: false,
      looping: false,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("${Videos.all_photo[Videos.initvalue]['name']}"),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: Videos.all_videos[Videos.initvalue].length,
        // padding: const EdgeInsets.all(10),
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, i) => const SizedBox(height: 5),
        itemBuilder: (context, i) => InkWell(
          onTap: () {
            setState(() {
              index = i;
              chewieController = ChewieController(
                videoPlayerController: Videos.contrllor[i],
                autoPlay: true,
                looping: false,
              );
            });
          },
          child: Container(
            height: _height * 0.3,
            width: _width,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.1),
              border: Border.all(color: Colors.white),
            ),
            // padding: const EdgeInsets.all(10),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 200,
                  width: _width,
                  child: (i == index)
                      ? (Videos.contrllor[i].value.isInitialized)
                      ? AspectRatio(
                    aspectRatio:
                    Videos.contrllor[i].value.aspectRatio,
                    child: (index == i)
                        ? Chewie(controller: chewieController)
                        : null,
                  )
                      : const Center(
                    child: CircularProgressIndicator(),
                  )
                      : VideoPlayer(Videos.contrllor[i]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}