import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReadingPage extends StatefulWidget {
  final String imageAddress;
  final String bookname;
  final String authorname;
  ReadingPage({this.authorname,this.bookname,this.imageAddress});
  @override
  _ReadingPageState createState() => _ReadingPageState();
}

class _ReadingPageState extends State<ReadingPage> {
  @override
  Widget build(BuildContext context) {
    String text =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras fermentum lectus lacus, in cursus sem volutpat non. Sed nisi ex, vestibulum quis lobortis et, scelerisque hendrerit velit. Maecenas convallis volutpat quam a luctus. Morbi metus massa, cursus in arcu et, dapibus iaculis odio. Quisque suscipit, erat ac ornare iaculis, nibh sapien semper dui, imperdiet cursus turpis libero ut justo. Duis in tincidunt neque, eu iaculis nulla. In lorem dolor, porttitor hendrerit dui feugiat, convallis tincidunt lectus. Nullam auctor, lorem ut consectetur dictum, quam mauris eleifend arcu, eu fermentum urna neque sit amet ante. Maecenas libero felis, consectetur at metus eu, vestibulum sollicitudin erat. Nullam euismod sapien eu dui mollis, vel imperdiet urna commodo. Maecenas semper elementum magna, eu commodo quam finibus non. Mauris condimentum nisl leo, quis dignissim augue gravida et. Pellentesque tincidunt vitae erat nec interdum. Praesent a dui sagittis, luctus metus nec, accumsan eros. Sed quis scelerisque velit, ut ultrices tellus. Praesent dignissim lacus a lectus suscipit sagittis. Aliquam luctus nibh at consectetur rutrum. Proin congue mauris elementum varius placerat. Pellentesque vulputate ante eu nunc placerat, eu egestas elit ornare. Nullam ac ipsum ultrices ante venenatis faucibus vehicula quis risus. Vestibulum ut turpis quis sapien dictum mattis eget iaculis nisl. In porttitor felis eu metus eleifend pulvinar. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tristique nulla sed felis sollicitudin consequat.";
    var size = MediaQuery.of(context).size;
    return Scaffold(
      //backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.01),
              height: size.height * 0.085,
              width: size.width,
              //color: Colors.red,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          padding: EdgeInsets.all(constraints.maxHeight * 0.18),
                          //color: Colors.black,
                          height: constraints.maxHeight * 0.8,
                          width: constraints.maxWidth * 0.15,
                          child: FittedBox(
                              child: Icon(
                            Icons.arrow_back_ios,
                            color: Color.fromRGBO(66, 66, 86, 1),
                          )),
                        ),
                      ),
                      Container(
                        //color: Colors.red,
                        height: constraints.maxHeight * 0.85,
                        width: constraints.maxWidth * 0.51,
                        child: Column(
                          children: [
                            Container(
                              // padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth*),
                              //color: Colors.purple,
                              height: constraints.maxHeight * 0.85 * 0.7,
                              width: constraints.maxWidth * 0.35,
                              child: FittedBox(
                                  child: Text(
                                widget.bookname,
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(66, 66, 86, 1),
                                )),
                              )),
                            ),
                            Container(
                              // padding: EdgeInsets.symmetric(horizontal: constraints.maxWidth*),
                              //color: Colors.yellow,
                              height: constraints.maxHeight * 0.85 * 0.3,
                              width: constraints.maxWidth * 0.35,
                              child: FittedBox(
                                  child: Text(
                                "Chapter 2",
                                style: GoogleFonts.lato(
                                    textStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(142, 142, 154, 1),
                                )),
                              )),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(constraints.maxHeight * 0.18),
                        //color: Colors.black,
                        height: constraints.maxHeight * 0.8,
                        width: constraints.maxWidth * 0.15,
                        child: FittedBox(
                            child: Icon(
                          Icons.share,
                          color: Color.fromRGBO(66, 66, 86, 1),
                        )),
                      ),
                    ],
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.all(size.height * 0.01),
              //color: Colors.red,
              height: size.height * 0.7,
              width: size.width,
              child: Center(
                  child: Text(
                text,
                overflow: TextOverflow.fade,
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(101, 101, 101, 1),
                )),
              )),
            ),
            Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(235, 235, 237, 1),
                    borderRadius: BorderRadius.circular(size.height * 0.006)),
                height: size.height * 0.012,
                width: size.width * 0.93,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(69, 69, 88, 1),
                          borderRadius:
                              BorderRadius.circular(size.height * 0.006)),
                      height: size.height * 0.012,
                      width: size.width * 0.93 * (173 / 230),
                    ),
                  ],
                )),
            SizedBox(
              height: size.height * 0.015,
            ),
            Container(
              //color: Colors.amber,
              height: size.height * 0.025,
              child: Center(
                  child: Text(
                "173 of 230",
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color:
                            Color.fromRGBO(101, 101, 101, 1).withOpacity(0.7))),
              )),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Container(
              //color: Colors.amber,
              height: size.height * 0.1,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Material(
                        borderRadius:
                            BorderRadius.circular(constraints.maxHeight * 0.45),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(
                              constraints.maxHeight * 0.45 / 2),
                          //splashColor: Colors.grey,
                          child: Container(
                            height: constraints.maxHeight * 0.45,
                            width: constraints.maxWidth * 0.9 / 5,
                            //color: Colors.white,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    constraints.maxHeight * 0.45 / 2)),
                            child: FittedBox(
                                child: Icon(
                              Icons.book,
                              color: Color.fromRGBO(69, 69, 88, 1),
                            )),
                          ),
                        ),
                      ),
                      Material(
                        borderRadius:
                            BorderRadius.circular(constraints.maxHeight * 0.45),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(
                              constraints.maxHeight * 0.45 / 2),
                          //splashColor: Colors.grey,
                          child: Container(
                            height: constraints.maxHeight * 0.45,
                            width: constraints.maxWidth * 0.9 / 5,
                            //color: Colors.white,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    constraints.maxHeight * 0.45 / 2)),
                            child: FittedBox(
                                child: Icon(
                              Icons.text_format,
                              color: Color.fromRGBO(69, 69, 88, 1),
                            )),
                          ),
                        ),
                      ),
                      Material(
                        borderRadius:
                            BorderRadius.circular(constraints.maxHeight * 0.45),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(
                              constraints.maxHeight * 0.45 / 2),
                          //splashColor: Colors.grey,
                          child: Container(
                            height: constraints.maxHeight * 0.45,
                            width: constraints.maxWidth * 0.9 / 5,
                            //color: Colors.white,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    constraints.maxHeight * 0.45 / 2)),
                            child: FittedBox(
                                child: Icon(
                              Icons.list,
                              color: Color.fromRGBO(69, 69, 88, 1),
                            )),
                          ),
                        ),
                      ),
                      Material(
                        borderRadius:
                            BorderRadius.circular(constraints.maxHeight * 0.45),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(
                              constraints.maxHeight * 0.45 / 2),
                          //splashColor: Colors.grey,
                          child: Container(
                            height: constraints.maxHeight * 0.45,
                            width: constraints.maxWidth * 0.9 / 5,
                            //color: Colors.white,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    constraints.maxHeight * 0.45 / 2)),
                            child: FittedBox(
                                child: Icon(
                              Icons.brightness_3,
                              color: Color.fromRGBO(191, 191, 191, 1),
                            )),
                          ),
                        ),
                      ),
                      Material(
                        borderRadius:
                            BorderRadius.circular(constraints.maxHeight * 0.45),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(
                              constraints.maxHeight * 0.45 / 2),
                          //splashColor: Colors.grey,
                          child: Container(
                            height: constraints.maxHeight * 0.45,
                            width: constraints.maxWidth * 0.9 / 5,
                            //color: Colors.white,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                    constraints.maxHeight * 0.45 / 2)),
                            child: FittedBox(
                                child: Icon(
                              Icons.headset,
                              color: Color.fromRGBO(191, 191, 191, 1),
                            )),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
