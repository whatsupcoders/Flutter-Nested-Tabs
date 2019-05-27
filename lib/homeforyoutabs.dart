import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeForYouTabs extends StatefulWidget {
  final Widget child;

  HomeForYouTabs({Key key, this.child}) : super(key: key);

  _HomeForYouTabsState createState() => _HomeForYouTabsState();
}

class _HomeForYouTabsState extends State<HomeForYouTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          ImageContainer(),
          SizedBox(
            height: 20.0,
          ),
          InstalledApps(),
          SizedBox(
            height: 20.0,
          ),
          RecommendedApps(),
        ],
      ),
    );
  }

  Widget ImageContainer() {
    return Container(
      height: 200.0,
      child: Image.network(
          'https://www.bluemoongame.com/wp-content/uploads/2018/12/Marvel_Strike_Force_Alliance_War_Update.png',
          fit: BoxFit.cover),
    );
  }


Widget RecommendedApps() {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: labelContainer('Recommended for you'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: appsContainer(),
          ),
        ],
      ),
    );
  }

  Widget InstalledApps() {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: labelContainer('Previously installed apps'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: appsRecommendedContainer(),
          ),
        ],
      ),
    );
  }

  Widget labelContainer(String labelVal) {
    return Container(
      height: 30.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            labelVal,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
          ),
          Text(
            'MORE',
            style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 18.0),
          ),
        ],
      ),
    );
  }

  Widget imageSection(String imageVal, String appVal,String rateVal) {
    return Column(
      children: <Widget>[
        Container(
          height: 100.0,
          width: 100.0,
          decoration: new BoxDecoration(
            image: DecorationImage(
              image: new NetworkImage(imageVal),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          appVal,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(children: <Widget>[
          Text(
          rateVal,
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold,),
        ),
        Icon(FontAwesomeIcons.solidStar,size: 10.0,),
        ],)
      ],
    );
  }

    Widget appsRecommendedContainer() {
    return Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            imageSection(
                'https://lh3.googleusercontent.com/48wwD4kfFSStoxwuwCIu6RdM2IeZmZKfb1ZeQkga0qEf1JKsiD-hK3Qf8qvxHL09lQ=s180-rw',
                'Amazon Kindle','4.2'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/7uRfJe2KkpKxZuMvY4OjhIq-TJrMeHgWYQt0H7LHZl4WNDAYjI6FFrLSsLhj2g8cqKr5=s180-rw',
                'Audible','4.5'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/d6TTnyRybU8B2naK8a0y1_u8ufjtK5V-mizS6o1tCx0U1aYPX9nJzcq9rSm5W2VVzBw=s180-rw',
                'Skype','4.1'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.ggpht.com/-wROmWQVYTcjs3G6H0lYkBK2nPGYsY75Ik2IXTmOO2Oo0SMgbDtnF0eqz-BRR1hRQg=s180-rw',
                'Google Docs','4.4'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/S3kGpXqfWleVJuCSH-nFuoz3Ey7se8pnwSe2OP9pbm2e-DHRlNdlmM6njhsUyV4bmE8=s180-rw',
                'Polaris','4.3'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/uI7mYOHs-xu-3oclPekf0Keaubhc_h_Q5wq9YdupUR1PzOGge5zV_CWnOBNAs45pDM7I=s180-rw',
                'OfficeSuite','4.3'),
          ],
        ));
  }

  Widget appsContainer() {
    return Container(
        height: 160.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            imageSection(
                'https://lh3.googleusercontent.com/ZZPdzvlpK9r_Df9C3M7j1rNRi7hhHRvPhlklJ3lfi5jk86Jd1s0Y5wcQ1QgbVaAP5Q=s180-rw',
                'Faceebook','4.1'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/00APBMVQh3yraN704gKCeM63KzeQ-zHUi5wK6E9TjRQ26McyqYBt-zy__4i8GXDAfeys=s180-rw',
                'Linkedin','4.6'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/jcbqFma-5e91cY9MlEasA-fvCRJK493MxphrqbBd8oS74FtYg00IXeOAn0ahsLprxIA=s180-rw',
                'Netflix','4.8'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/F5B6GGdo6tAVNApr2X2p35igQhYBouuPA3uuIu3LEPHsIl7JPMHA1sn4-5J2B78JWA=s180-rw',
                'Flutter','5.0'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/uOjFCUkQ4w56akZTg_AAGYsyiFd1UB3-Rd8KYDoiIpD05VzkTz647PO3B_2v9sPg2BM=s180-rw',
                'Pinterest','4.9'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/aYbdIM1abwyVSUZLDKoE0CDZGRhlkpsaPOg9tNnBktUQYsXflwknnOn2Ge1Yr7rImGk=s180-rw',
                'Instagram','4.8'),
          ],
        ));
  }
}
