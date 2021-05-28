import 'package:flutter/material.dart';
import 'package:whatsaapppnew/components/chat.dart';
import 'package:whatsaapppnew/components/story.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: whatsapp(),
    );
  }
}

class whatsapp extends StatefulWidget {
  @override
  _whatsappState createState() => _whatsappState();
}

class _whatsappState extends State<whatsapp> {
  Color mainColor = Color(0xFF177767);

  List<String> imageUrl = [
    "https://tse3.mm.bing.net/th?id=OIP.em7NOkpvowqtew65L_7nDgHaE8&pid=Api&P=0&w=300&h=300",
    "https://tse2.mm.bing.net/th?id=OIP.6Xj5zSLLgiSwCTLU0toHjAHaFR&pid=Api&P=0&w=247&h=176 1.jpg ",
    "https://tse3.mm.bing.net/th?id=OIP.bnf-CnuH9A80qCD4y4WVVQHaJ3&pid=Api&P=0&w=300&h=300 0.jpg ",
    "https://tse2.mm.bing.net/th?id=OIP.JISWsLdiC2QXiYyD8i1ZxAHaE8&pid=Api&P=0&w=250&h=167 2.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        title: Text("WhatsApp"),
        backgroundColor: mainColor,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 101,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  storyButton(imageUrl[1], "Anshu"),
                  storyButton(imageUrl[2], "harsh"),
                  storyButton(imageUrl[0], "parth"),
                  storyButton(imageUrl[1], "prince"),
                  storyButton(imageUrl[2], "Manish"),
                  storyButton(imageUrl[2], "bhavi"),
                  storyButton(imageUrl[2], "pooja"),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                  ),child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    
                    child: ListView(
                      children: [
                        chatTile(imageUrl[0], "Anshu", "flutter on work", "10Am", true),
                        chatTile(imageUrl[0], "Anshu", "flutter on work", "3pm", true),
                        chatTile(imageUrl[0], "Anshu", "flutter on work", "02/2/2001", false),
                        chatTile(imageUrl[0], "hu", "flutter on work", "02/2/2001", true),
                        chatTile(imageUrl[0], "Anshu", "flutter on work", "02/2/2001", false),
                        chatTile(imageUrl[0], "Anshu", "flutter on work", "02/2/2001", true),
                        chatTile(imageUrl[0], "Anshu", "nmsajhdm", "date", false),
                      ],
                    ),
                  ),
            ),
          ),
       
        ],
      ),
    );
  }
}
