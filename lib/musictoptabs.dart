import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MusicTopTabs extends StatefulWidget {
   int colorVal;
  MusicTopTabs(this.colorVal);
  _MusicTopTabsState createState() => _MusicTopTabsState();
}

class _MusicTopTabsState extends State<MusicTopTabs> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
     void initState() {
       super.initState();
      _tabController = new TabController(vsync: this, length: 6);
      _tabController.addListener(_handleTabSelection);
     }
     void _handleTabSelection() {
        setState(() {
          widget.colorVal=0xff2196f3;
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
            indicatorColor:Color(0xff2196f3),
            unselectedLabelColor: Colors.grey,
             controller: _tabController,
            tabs: <Widget>[
              Tab(
                icon:Icon(FontAwesomeIcons.compass, color: _tabController.index == 0
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child:Text('For you',style: TextStyle( color: _tabController.index == 0
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.music, color: _tabController.index == 1
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child: Text('Top Songs',style: TextStyle( color: _tabController.index == 1
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.dotCircle, color: _tabController.index == 2
                                          ? Color( widget.colorVal)
                          : Colors.grey),
                child: Text('Top Album',style: TextStyle( color: _tabController.index == 2
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
               Tab(
                icon: Icon(FontAwesomeIcons.solidBookmark, color: _tabController.index == 3
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child: Text('New Releases',style: TextStyle( color: _tabController.index == 3
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
             
               Tab(
                icon: Icon(FontAwesomeIcons.shapes, color: _tabController.index == 4
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child: Text('Genres',style: TextStyle( color: _tabController.index == 4
                          ?  Color( widget.colorVal)
                          : Colors.grey)),
              ),
              Tab(
                icon: Icon(FontAwesomeIcons.cartPlus, color: _tabController.index == 5
                          ? Color( widget.colorVal)
                          : Colors.grey),
                child: Text('Pre- orders',style: TextStyle( color: _tabController.index == 5
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
