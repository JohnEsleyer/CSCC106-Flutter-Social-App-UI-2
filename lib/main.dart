import "package:flutter/material.dart";
import 'feed_item.dart';

void main() => runApp(MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    ));

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 188, 207, 207),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 12, 88, 94),
        title: Text("UI Clone"),
      ),
      body: Column(children: [
        //Section 1. Stories
        Container(
          color: Colors.teal,
          height: 250,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              for (int i = 0; i < 5; i++) ...[
                SizedBox(width: 16),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color.fromARGB(255, 12, 88, 94),
                  ),
                  height: 200,
                  width: 125,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if (i == 0)
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.yellow,
                                ),
                                height: 10,
                                width: 10,
                              ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Title",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Lorem Ipsum",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ]
            ]),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15, left: 15),
                  child: Text(
                    "Posts",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                FeedItem(
                  name: "Kai Williams",
                  content:
                      " The whole secret of a successful life is to find out what is one’s destiny to do, and then do it. - Henry Ford",
                  icon:
                      "https://images.generated.photos/Jhp7iWnE7q1-QJC9Gea8k1jPEEl6YZTw97ttsbkPFJI/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/MDg2MjkyLmpwZw.jpg",
                ),
                FeedItem(
                  name: "Steven Patton",
                  content:
                      " Money and success don't change people; they merely amplify what is already there.",
                  icon:
                      "https://images.generated.photos/Bd_QOTU3POpPsBehpp2OWrHGQOxSwWinFI_9SFq7v7A/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/NjI5NTI3LmpwZw.jpg",
                ),
                FeedItem(
                  name: "Chrsitian Spence",
                  content:
                      " Money and success don't change people; they merely amplify what is already there.",
                  icon:
                      "https://images.generated.photos/RLP8KUWGtVAoWG1ah6u5k_UyCX-jchA5q7eK8FRE7yc/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/NjczMTc2LmpwZw.jpg",
                ),
                FeedItem(
                  name: "Chrsitian Spence",
                  content:
                      " Money and success don't change people; they merely amplify what is already there.",
                  icon:
                      "https://images.generated.photos/RLP8KUWGtVAoWG1ah6u5k_UyCX-jchA5q7eK8FRE7yc/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/NjczMTc2LmpwZw.jpg",
                ),
                FeedItem(
                  name: "Chrsitian Spence",
                  content:
                      " Money and success don't change people; they merely amplify what is already there.",
                  icon:
                      "https://images.generated.photos/RLP8KUWGtVAoWG1ah6u5k_UyCX-jchA5q7eK8FRE7yc/rs:fit:512:512/wm:0.95:sowe:18:18:0.33/czM6Ly9pY29uczgu/Z3Bob3Rvcy1wcm9k/LnBob3Rvcy92M18w/NjczMTc2LmpwZw.jpg",
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
