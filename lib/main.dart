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
              child: _headLine()),
          ),
          Expanded(child: Placeholder())
        ],
      ),
    );
  }
  Widget _headLine(){
    return Padding(
      padding: EdgeInsets.only(left: 120, right: 32, top:32, bottom: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Feel the Comfort', style: TextStyle(color: Colors.white, fontSize: 32.0, fontWeight: FontWeight.bold),),
          SizedBox(height:12),
          Text('Ex ex laboris est proident voluptate veniam, esse id lorem proiden Lorem mimin poritour eceptiona vaoluptate ipsum ', style: TextStyle(color: Colors.white, fontSize: 12.0),),
          SizedBox(height:12),
          Row(
            children: [
              Container(
                color: Colors.orange,
                child: FlatButton(color: Colors.orange,textColor: Colors.white,onPressed: (){}, child: Text('Shop Now',))),
              SizedBox(width:12),
              Container(
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                    top: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                    right: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                    bottom: BorderSide(width: 1.0, color: Color(0xFFFFDFDFDF)),
                  )
                ),
                child: FlatButton(onPressed: (){}, child: Text('Try to My Room'))),
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