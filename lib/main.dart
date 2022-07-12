import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Detail(),
      title: "Muhammad Lutfi",
    );
  }
}

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          // gambar
          Container(
              height: 240,
              child: Hero(
                tag: const Text("gambar acak"),
                child: Material(
                  child: InkWell(
                    // gamabar bisa pake Image asset ataupun network
                    child: Image.network(
                      "https://picsum.photos/1440/1024",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),

          // end gambar

          // nama heding
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // heading nama
                      Text(
                        "191240000970 ",
                        style: TextStyle(
                            fontSize: 25, color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      // Email
                      Text(
                        "UvuWeve",
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 75, 75, 75)),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    // icon star atau bintang 
                      Icons.star,
                      size: 30,
                      color: Colors.red,
                    ),
                    // text
                    Text(
                      "45",
                      style: TextStyle(fontSize: 18),
                    )
                  ],
                )
              ],
            ),
          ),

          // end nama  heding

          // icon

          Container(
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.call,
                        size: 50,
                        color: Colors.blue,
                      ),
                      Text(
                        "Call",
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.place_sharp,
                        size: 50,
                        color: Colors.blue,
                      ),
                      Text(
                        "LOCATION",
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.share,
                        size: 50,
                        color: Colors.blue,
                      ),
                      Text(
                        "SHARE",
                        style:
                            const TextStyle(fontSize: 18, color: Colors.blue),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          // end icon

          //discripsion halaman

          Container(
            padding: const EdgeInsets.all(10),
            child: const Card(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Deserunt qui anim dolore veniam excepteur pariatur reprehenderit voluptate enim sunt sunt sunt amet aute. Proident et elit fugiat aute commodo. Anim magna excepteur veniam voluptate cupidatat eiusmod amet velit in ullamco in dolor. Laboris in velit culpa commodo fugiat esse adipisicing mollit laborum reprehenderit elit nisi ut. Veniam nisi cupidatat culpa ad consequat eiusmod elit minim voluptate. Mollit esse quis nostrud non esse est elit. Ea nisi consectetur proident dolore ex. Laborum tempor voluptate ullamco adipisicing qui ad velit Lorem enim. Anim duis cupidatat quis ipsum enim nulla mollit elit. In qui sit minim id sunt. Tempor qui est proident aliquip mollit. Ut nisi pariatur laboris dolore culpa fugiat amet deserunt nostrud in. Commodo minim do laboris consequat ullamco irure. Ex ex esse et cupidatat enim est sit proident duis. Voluptate pariatur irure voluptate reprehenderit in mollit. Excepteur quis nulla ad reprehenderit sint exercitation.",
                  style: TextStyle(fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ),

          // end discripsion halaman
        ],
      ),
    );
  }
}
