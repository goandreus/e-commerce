import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

final int MAX_WIDTH = 1440;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: ContentWidget(
          child: SingleChildScrollView(
            child: Column(
              children: [
                HeaderWidget(),
                SizedBox(height: 8),
                BrandsWidget(),
                SizedBox(height: 8),
                FeaturedWidget(),
                SizedBox(height: 8),
                ItemsWidget(),
                SizedBox(height: 8),
                ServicesWidget(),
                SizedBox(height: 8),
                FormWidget(),
                SizedBox(height: 8),
                FooterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HideIf extends StatelessWidget {

  final double widthLessThan;
  final Widget child;

  const HideIf({Key key, this.widthLessThan, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    if (screenSize.width > widthLessThan) {
      return child;
    }
    return Container(
      
    );
  }
}

class ContentWidget extends StatelessWidget {
  final Widget child;

  const ContentWidget({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size screnSize = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: screnSize.width < MAX_WIDTH ? screnSize.width : MAX_WIDTH,
          child:child
        )
      ],
     
    );
  }
}

class HeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    var width = screenSize.width < MAX_WIDTH ? screenSize.width : MAX_WIDTH;
    return Container(
      height: width * 3 / 7.0,
      child: Row(
        children: [
          Container(
            color: Colors.green[800],
            width: width * 3 / 7.0,
            child: AspectRatio(
              aspectRatio: 1.0,
              child: _headLine(context)),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/photo.jpg'),
                  fit: BoxFit.cover,
                )
              ),
              child: Container(),
            ),
          ),
        ]
      ),
    );
  }
  Widget _headLine(context){
    Size screenSize = MediaQuery.of(context).size;
    var width = screenSize.width < MAX_WIDTH ? screenSize.width : MAX_WIDTH;

    double leftPadding = lerpDouble(8, 180, (width - 500) / MAX_WIDTH);
    double otherPadding = lerpDouble(4, 40, (width - 500) / MAX_WIDTH);
    double titleFontSize = lerpDouble(12, 45, (width - 500) / MAX_WIDTH);
    double subtitleFonsize = lerpDouble(8, 16, (width - 500) / MAX_WIDTH);

    return Padding(
      padding: EdgeInsets.only(left: leftPadding, right: otherPadding, top:otherPadding, bottom: otherPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Feel the Comfort', style: TextStyle(color: Colors.white, fontSize: titleFontSize, fontWeight: FontWeight.bold),),
          SizedBox(height:12),
          Text('Ex ex laboris est proident voluptate veniam, esse id lorem proiden Lorem mimin poritour eceptiona vaoluptate ipsum ', style: TextStyle(color: Colors.white, fontSize: subtitleFonsize),),
          SizedBox(height:12),
          Row(
            children: [
              Container(
                color: Colors.orange,
                child: FlatButton(color: Colors.orange,textColor: Colors.white,onPressed: (){}, child: Text('Shop Now',))),
              SizedBox(width:12),
              HideIf(
                widthLessThan: 700,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                      top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                      right: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                      bottom: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                    )
                  ),
                  child: FlatButton(onPressed: (){}, child: Text('Try to My Room'))),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BrandsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children : [
        Container(width: 100, height: 80, child: Placeholder(),),
        Container(width: 100, height: 80, child: Placeholder(),),
        Container(width: 100, height: 80, child: Placeholder(),),
        Container(width: 100, height: 80, child: Placeholder(),),
      ]
      
    );
  }
}

class FeaturedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Placeholder(),
    );
  }
}

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      child: Placeholder(),
    );
  }
}

class ServicesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Placeholder(),
    );
  }
}

class FormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Placeholder(),
    );
  }
}

class FooterWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Text('Footer')
      ],
    );
  }
}