import 'package:flutter/material.dart';
import 'package:new_musicc/models/music.dart';
import 'package:new_musicc/models/category.dart ';
import 'package:new_musicc/service/MusicOperations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
          'Setting',
          style: TextStyle(fontSize: 30),
        )),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListView(
                children: [
                  Text(
                    'Download',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Playback',
                      style: TextStyle(color: Colors.white, fontSize: 20))
                ],
              ),
            ),
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blueGrey.shade300, Colors.black],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ));
  }
}

createMusic(Music Music) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Container(
            height: 200,
            width: 200,
            child: InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => page2()));
                },
                child: Image.network(Music.image, fit: BoxFit.cover))),
        Text(
          Music.name,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          Music.desc,
          style: TextStyle(color: Colors.white, fontSize: 15),
        )
      ],
    ),
  );
}

createMusicList(String label) {
  // List<Music> musiclist = MusicOperations.getMusic() ;
  List musiclist = MusicOperations.getMusic();
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        Container(
          height: 270,
          child: ListView.builder(
            // padding: EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) {
              return createMusic(musiclist[index]);
            },
            itemCount: musiclist.length,
          ),
        ),
      ],
    ),
  );
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        bottomNavigationBar: BottomNavigationBar(
          unselectedLabelStyle: TextStyle(color: Colors.white),
          backgroundColor: Colors.black45,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.white), label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.white),
              label: 'Search',
            ),
            BottomNavigationBarItem(
                icon:
                    Icon(Icons.my_library_music_outlined, color: Colors.white),
                label: 'Library'),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                title: Text(
                  'MUSIC APP',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                actions: [
                  TextButton.icon(
                    // <-- TextButton
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => page2()),
                      );
                    },
                    icon: Icon(
                      Icons.settings,
                      size: 24.0,
                      color: Colors.white,
                    ),
                    label: Text(''),
                  ),
                ],
              ),
              createMusicList('Music For You'),
              createMusicList('Popular Playlist'),
              createMusicList('Top Mixes'),
            ]),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blueGrey.shade300, Colors.black],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
          ),
        ));
  }
}
