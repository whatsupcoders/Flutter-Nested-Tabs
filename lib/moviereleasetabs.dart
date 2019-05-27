import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MovieReleaseTabs extends StatefulWidget {
  final Widget child;

  MovieReleaseTabs({Key key, this.child}) : super(key: key);

  _MovieReleaseTabsState createState() => _MovieReleaseTabsState();
}

class _MovieReleaseTabsState extends State<MovieReleaseTabs> {

  final List<String> imgList = [
  'https://lh3.googleusercontent.com/GJAnttuWVk8IcpLlkMVMjyPWkgGc1-8_kFGoKa5GDP21rMKZt4AztM-hn5Q6WQdKFEg=w200-h300-rw',
  'https://lh3.googleusercontent.com/gNBb6s2J9aRrQE8wk6mppKbb46uYcW1p5EuzknTZF3Ds6hYM9QrWgO8rdlQDyY2A7Vmi=w200-h300-rw',
  'https://lh3.googleusercontent.com/IGPFCdnnT8Sp1kI___pIWlWFRlLaKgAzu7eP_QXw0FbZQ_gg3WvXqbhbiWaE9_hVEGd4Bw=w200-h300-rw',
  'https://lh3.googleusercontent.com/GVpOcjU50jtPmlNbB331263RgHv_NEqE-FnweqvUWleO94Ckvrznw05kwUGk1oKp5GA=w200-h300-rw',
  'https://lh3.googleusercontent.com/t58TiR9gox0kZ9o1GBY5qN6Ywg2HjaQ6n2cUPc_KYJntdcsVl5CGKOPjLwMcapUhD2fr-w=w200-h300-rw',
  'https://lh3.googleusercontent.com/zZ1ZSFCBB4iiA6MEOaZxHJX214soedvkqwRHGB58gnODQeVQUI1ID3wpEje-SOWFOavQNA=w200-h300-rw'
];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          CarouselContainer(),
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

 Widget CarouselContainer(){
    return  CarouselSlider(
      viewportFraction: 0.9,
      aspectRatio: 2.0,
      autoPlay: true,
      enlargeCenterPage: true,
      items: imgList.map(
        (url) {
          return Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Image.network(
                url,
                fit: BoxFit.cover,
                width: 1000.0,
              ),
            ),
          );
        },
      ).toList(),
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
            child: labelContainer('Most Popular Movies'),
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
                'https://lh3.googleusercontent.com/IGPFCdnnT8Sp1kI___pIWlWFRlLaKgAzu7eP_QXw0FbZQ_gg3WvXqbhbiWaE9_hVEGd4Bw=w200-h300-rw',
                'Aquaman','\u0024 19.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/GVpOcjU50jtPmlNbB331263RgHv_NEqE-FnweqvUWleO94Ckvrznw05kwUGk1oKp5GA=w200-h300-rw',
                'A Star Is Born','\u0024 19.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/ABFXY-iPTOBCBaa0xEjE0WdzkOBupXUfVk2Ezw-S0o69pA3wHPW6Q-PdWoNN1BHToY-lOw=w200-h300-rw',
                'Instant Family','\u0024 12.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/gJhD0pbdigjz8camGFfQhjaKP4rqQ0tinXURobmdGpQxJaUnPs1jaaWUkSDdFLsXZgIZ=w200-h300-rw',
                'Ralph','\u0024 14.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/8BFdtKYxUBfPuYucIZp8kdmpZpKmqQ3sd-nhqNfYfmMoDdTzxJMk6ibSSKL0DHX3Ak9eMQ=w200-h300-rw',
                'Bohemian','\u0024 19.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/Xwp2AkFm-89fUbTsrhTXkUdjRuKbbpgWL8iLoeicfV-mkXbpq5BpiJU9-V5j4vU_36F7=w200-h300-rw',
                'Iron Man','\u0024 14.99'),
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
                'https://lh3.googleusercontent.com/oE89fThv4Jz8oquzHO_pkn2PwES88YM4FJtjBLsZv0ZMpS12ViAryUN0V7kTbtuzJ9l1=w200-h300-rw',
                'Avengers: Infinity War','\u0024 13.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/N2smvNyfhOUUdYFt8UDtenVY1A3A62reVWacPTRERjDYRex4dkVfrxrQJ1BMPQ1KSxXKvw=w200-h300-rw',
                'Rampage','\u0024 9.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/2L4KUuN8fXnkwh2S-C3exr2b-oTe3mIaspcB4RO6XG026yLYFmEMinLZCDOBxftDiZU=w200-h300-rw',
                'Fantastic Beasts','\u0024 9.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/Fh9Pvucut6_q7K1pNZXUlS94qG5R1hdCIYhbRrOn5yy8RJ-Bv-gWcXHT3cSEbc4RchxR=w200-h300-rw',
                'Ready Player One','\u0024 13.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/Ef2oPADcTmD3p_jRHiGf6pJuxdvalfj-NSAReeayRFaX3Ic2YM5Dh0r19erhmwWB-GS7=w200-h300-rw',
                'Despicable Me 3','\u0024 14.99'),
            SizedBox(
              width: 20.0,
            ),
            imageSection(
                'https://lh3.googleusercontent.com/oDQDmSUZQbuOwzMDqWl_nAqG6UyqIPiQIlm59JTtDSOacBpha8i99yjzbsW_36eGKfQ=w200-h300-rw',
                'Captain Marvel','\u0024 14.99'),
          ],
        ));
  }
}
