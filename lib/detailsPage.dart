import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'ReadingPage.dart';
import 'ListeningPage.dart';

class DetailsPage extends StatefulWidget {
  final String imageAddress;
  final String bookname;
  final String authorname;
  DetailsPage({this.authorname, this.bookname, this.imageAddress});
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      //backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            //color: Colors.red,
            gradient: LinearGradient(
                colors: [Color.fromRGBO(249, 191, 161, 1), Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.center
                //,stops: [0.7,0.9]
                )),
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
                      Material(
                        color: Colors.white.withOpacity(0),
                        child: InkWell(
                          onTap: () => Navigator.pop(context),
                          borderRadius: BorderRadius.circular(
                              constraints.maxHeight * 0.4),
                          splashColor: Colors.white,
                          child: Container(
                            padding:
                                EdgeInsets.all(constraints.maxHeight * 0.18),
                            //color: Colors.black,
                            height: constraints.maxHeight * 0.8,
                            width: constraints.maxWidth * 0.15,
                            child: FittedBox(
                                child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: constraints.maxWidth * 0.54,
                      ),
                      Container(
                        padding: EdgeInsets.all(constraints.maxHeight * 0.18),
                        //color: Colors.black,
                        height: constraints.maxHeight * 0.8,
                        width: constraints.maxWidth * 0.15,
                        child: FittedBox(
                            child: Icon(
                          Icons.share,
                          color: Colors.white,
                        )),
                      ),
                      Container(
                        padding: EdgeInsets.all(constraints.maxHeight * 0.18),
                        //color: Colors.black,
                        height: constraints.maxHeight * 0.8,
                        width: constraints.maxWidth * 0.15,
                        child: FittedBox(
                            child: Icon(
                          Icons.bookmark_border,
                          color: Colors.white,
                        )),
                      )
                    ],
                  );
                },
              ),
            ),
            Hero(
              tag: Text("Haha"),
              child: Container(
                height: size.height * 0.4,
                width: size.width * 0.55,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Stack(
                      children: [
                        Positioned(
                          bottom: constraints.maxWidth * 0.04,
                          left: constraints.maxWidth * 0.05,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: constraints.maxHeight * 0.015),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(1),
                                borderRadius: BorderRadius.circular(
                                    constraints.maxHeight * 0.04)),
                            height: constraints.maxHeight * 0.12,
                            width: constraints.maxWidth * 0.25,
                            child: FittedBox(
                              child: Text(
                                "⭐ " + 4.5.toString(),
                                style: GoogleFonts.lato(
                                    textStyle:
                                        TextStyle(fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(size.width * 0.05),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(widget.imageAddress),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(203, 201, 208, 1),
                          blurRadius: 10,
                          spreadRadius: 0.6,
                          offset: Offset(size.width * 0.55 * 0.051,
                              size.height * 0.4 * 0.031))
                    ]),
              ),
            ),
            SizedBox(
              height: size.height * 0.025,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.33),
              height: size.height * 0.06,
              width: size.width,
              //color: Colors.red,
              child: FittedBox(
                  child: Text(
                widget.bookname,
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(66, 66, 86, 1)),
              )),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.33, vertical: size.width * 0.009),
              height: size.height * 0.03,
              width: size.width,
              //color: Colors.red,
              child: FittedBox(
                  child: Text(
                widget.authorname,
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(142, 142, 154, 1)),
              )),
            ),
            Container(
              height: size.height * 0.07,
              width: size.width,
              //color: Colors.red,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        //color: Colors.purple,
                        width: constraints.maxWidth * 0.27,
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(
                                      constraints.maxHeight * 0.1),
                                  //color: Colors.grey,
                                  height: constraints.maxHeight * 0.6,
                                  width: constraints.maxWidth,
                                  child: FittedBox(
                                      child: Text(
                                    "2010",
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Color.fromRGBO(66, 66, 86, 1)
                                                .withOpacity(0.9),
                                            fontWeight: FontWeight.bold)),
                                  )),
                                ),
                                Container(
                                  //color: Colors.pink,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: constraints.maxHeight * 0.1),
                                  height: constraints.maxHeight * 0.4,
                                  width: constraints.maxWidth,
                                  child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        "Published in",
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                color: Color.fromRGBO(
                                                    142, 142, 154, 1),
                                                fontWeight: FontWeight.w300)),
                                      )),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Container(
                        color: Color.fromRGBO(203, 201, 208, 1),
                        width: constraints.maxWidth * 0.0031,
                        height: constraints.maxHeight,
                      ),
                      Container(
                        //color: Colors.purple,
                        width: constraints.maxWidth * 0.27,
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(
                                      constraints.maxHeight * 0.1),
                                  //color: Colors.grey,
                                  height: constraints.maxHeight * 0.6,
                                  width: constraints.maxWidth,
                                  child: FittedBox(
                                      child: Text(
                                    "156",
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Color.fromRGBO(66, 66, 86, 1)
                                                .withOpacity(0.9),
                                            fontWeight: FontWeight.bold)),
                                  )),
                                ),
                                Container(
                                  //color: Colors.pink,
                                  height: constraints.maxHeight * 0.4,
                                  width: constraints.maxWidth,
                                  child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        "Pages",
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                color: Color.fromRGBO(
                                                    142, 142, 154, 1),
                                                fontWeight: FontWeight.w300)),
                                      )),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                      Container(
                        color: Color.fromRGBO(203, 201, 208, 1),
                        width: constraints.maxWidth * 0.0031,
                        height: constraints.maxHeight,
                      ),
                      Container(
                        //color: Colors.purple,
                        width: constraints.maxWidth * 0.27,
                        child: LayoutBuilder(
                          builder: (context, constraints) {
                            return Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(
                                      constraints.maxHeight * 0.1),
                                  //color: Colors.grey,
                                  height: constraints.maxHeight * 0.6,
                                  width: constraints.maxWidth,
                                  child: FittedBox(
                                      child: Text(
                                    "187",
                                    style: GoogleFonts.lato(
                                        textStyle: TextStyle(
                                            color: Color.fromRGBO(66, 66, 86, 1)
                                                .withOpacity(0.9),
                                            fontWeight: FontWeight.bold)),
                                  )),
                                ),
                                Container(
                                  //color: Colors.pink,
                                  height: constraints.maxHeight * 0.4,
                                  width: constraints.maxWidth,
                                  child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        "Reviews",
                                        style: GoogleFonts.lato(
                                            textStyle: TextStyle(
                                                fontSize: 20,
                                                color: Color.fromRGBO(
                                                    142, 142, 154, 1),
                                                fontWeight: FontWeight.w300)),
                                      )),
                                ),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Container(
              //color: Colors.red,
              height: size.height * 0.04,
              width: size.width,
              child: FittedBox(
                  child: Text(
                "About",
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(66, 66, 86, 1),
                )),
              )),
            ),
            Container(
              padding: EdgeInsets.all(size.height * 0.01),
              //color: Colors.red,
              height: size.height * 0.17,
              width: size.width,
              child: Center(
                  child: Text(
                "The Arsonist, by the acclaimed author of The Tall Man, is the story of that man, the fire he lit, and the people who were killed. On the scorching February day in 2009 that became known as Black Saturday, a man lit two fires in Victoria's Latrobe Valley, then sat on the roof of his house to watch the inferno.",
                overflow: TextOverflow.fade,
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Color.fromRGBO(66, 66, 86, 1),
                )),
              )),
            ),
            Container(
                //padding: EdgeInsets.all(size.height * 0.01),
                //color: Colors.red,
                height: size.height * 0.071,
                width: size.width,
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ReadingPage(bookname: widget.bookname,),
                                ));
                          },
                          child: Container(
                            //padding: EdgeInsets.all(constraints.maxHeight * 0.15),
                            height: constraints.maxHeight * 0.7,
                            width: constraints.maxWidth * 0.35,
                            child: LayoutBuilder(
                              builder: (context, constraints) {
                                return Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      //color: Colors.red,
                                      height: constraints.maxHeight * 0.6,
                                      width: constraints.maxWidth * 0.2,
                                      child: FittedBox(
                                          child: Icon(
                                        Icons.book,
                                        color: Colors.white,
                                      )),
                                    ),
                                    Container(
                                      //color: Colors.purple,
                                      height: constraints.maxHeight * 0.6,
                                      width: constraints.maxWidth * 0.45,
                                      child: FittedBox(
                                        child: Text("Read",
                                            style: GoogleFonts.lato(
                                                textStyle: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white))),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(66, 66, 86, 1),
                                borderRadius: BorderRadius.circular(
                                    constraints.maxWidth * 0.03)),
                          ),
                        ),
                        Container(
                          //padding: EdgeInsets.all(constraints.maxHeight * 0.15),
                          height: constraints.maxHeight * 0.7,
                          width: constraints.maxWidth * 0.35,
                          child: LayoutBuilder(
                            builder: (context, constraints) {
                              return Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    //color: Colors.red,
                                    height: constraints.maxHeight * 0.6,
                                    width: constraints.maxWidth * 0.2,
                                    child: FittedBox(
                                        child: Icon(
                                      Icons.headset,
                                      color: Colors.white,
                                    )),
                                  ),
                                  InkWell(
                                    onTap: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ListeningPage(
                                            authorname: widget.authorname,
                                            bookname: widget.bookname,
                                            imageAddress: widget.imageAddress,
                                          ),
                                        )),
                                    child: Container(
                                      //color: Colors.purple,
                                      height: constraints.maxHeight * 0.6,
                                      width: constraints.maxWidth * 0.45,
                                      child: FittedBox(
                                        child: Text("Listen",
                                            style: GoogleFonts.lato(
                                                textStyle: TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    color: Colors.white))),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(66, 66, 86, 1),
                              borderRadius: BorderRadius.circular(
                                  constraints.maxWidth * 0.03)),
                        ),
                      ],
                    );
                  },
                ))
          ],
        ),
      )),
    );
  }
}
