import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class BooksTopTabs extends StatefulWidget {
  int colorVal;
  BooksTopTabs(this.colorVal);
  _BooksTopTabsState createState() => _BooksTopTabsState();
}

class _BooksTopTabsState extends State<BooksTopTabs> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
     void initState() {
       super.initState();
      _tabController = new TabController(vsync: this, length: 7);
      _tabController.addListener(_handleTabSelection);
     }
     void _handleTabSelection() {
        setState(() {
          widget.colorVal=0xff990099;
         });
     }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 4.0,
            indicatorColor:Color(0xff990099),
            unselectedLabelColor: Colors.grey,
             controller: _tabController,
            tabs: <Widget>[
              Tab(
                icon:Icon(FontAwesomeIcons.book, color: _tabController.index == 0
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child:Text('Ebooks',style: TextStyle( color: _tabController.index == 0
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.headphones, color: _tabController.index == 1
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child: Text('Audiobooks',style: TextStyle( color: _tabController.index == 1
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.cloudsmith, color: _tabController.index == 2
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child: Text('Comic',style: TextStyle( color: _tabController.index == 2
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
               Tab(
                icon: Icon(FontAwesomeIcons.shapes, color: _tabController.index == 3
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child: Text('Genres',style: TextStyle( color: _tabController.index == 3
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.solidStar, color: _tabController.index == 4
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child: Text('TopSelling',style: TextStyle( color: _tabController.index == 4
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.solidBookmark, color: _tabController.index == 5
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child: Text('New Releases',style: TextStyle( color: _tabController.index == 5
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.chartBar, color: _tabController.index == 6
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child: Text('Top Free',style: TextStyle( color: _tabController.index == 6
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}
