import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GameTopChartsTabs extends StatefulWidget {
  int colorVal;
  GameTopChartsTabs(this.colorVal);

  _GameTopChartsTabsState createState() => _GameTopChartsTabsState();
}

class _GameTopChartsTabsState extends State<GameTopChartsTabs>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 5);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {
      widget.colorVal = 0xff3f51b5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xffEFF0F1),
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      child: Padding(
        padding: EdgeInsets.only(top: 32.0, left: 8.0, right: 8.0),
        child: innerNestedTabs(),
      ),
    );
  }

  Widget innerNestedTabs() {
    return DefaultTabController(
      length: 5,
      child: new Scaffold(
        appBar: new PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: new Container(
            child: new SafeArea(
              child: Column(
                children: <Widget>[
                  new Expanded(child: new Container()),
                  new TabBar(
                    isScrollable: true,
                    controller: _tabController,
                    labelPadding: EdgeInsets.all(10.0),
                    indicatorColor: Color(widget.colorVal),
                    indicatorWeight: 5.0,
                    tabs: [
                      Text("TOP FREE",
                          style: TextStyle(
                              color: _tabController.index == 0
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("TOP GROSSING",
                          style: TextStyle(
                              color: _tabController.index == 1
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("TRENDING",
                          style: TextStyle(
                              color: _tabController.index == 2
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("TOP PAID",
                          style: TextStyle(
                              color: _tabController.index == 3
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                      Text("TOP RATED",
                          style: TextStyle(
                              color: _tabController.index == 4
                                  ? Color(widget.colorVal)
                                  : Colors.black)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            TopFreeApps(),
            Container(
              height: 200.0,
              child: Center(child: Text('TOP GROSSING')),
            ),
            Container(
              height: 200.0,
              child: Center(child: Text('TRENDING')),
            ),
            Container(
              height: 200.0,
              child: Center(child: Text('TOP PAID')),
            ),
            Container(
              height: 200.0,
              child: Center(child: Text('TOP RATED')),
            ),
          ],
        ),
      ),
    );
  }

  Widget TopFreeApps() {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(height: 40.0),
          ListTile(
            leading: Container(
              height: 100.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new NetworkImage(
                      'https://lh3.googleusercontent.com/sjyLUoLz9dM6nQgn3XiyzUrMBC_oAD_MxHtMGrLha0UXDqFpwAOUaWjqgd0WIPQUKg=s180-rw'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            title: Text(
              'DRAGON BALL',
            ),
            subtitle: Text('Bandai Namco'),
          ),
          SizedBox(height: 40.0),
          ListTile(
            leading: Container(
              height: 100.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new NetworkImage(
                      'https://lh3.googleusercontent.com/IUmxAtr8x20F50Rg0qFLPvN1KfGzB57wpRPzzcbx1Cy0tAbyPxR2HZIx8z3_ywSwkYV0=s180-rw'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            title: Text(
              'Jewels Classic',
            ),
            subtitle: Text('Jewel - Lazy Chick'),
          ),
          SizedBox(height: 40.0),
          ListTile(
            leading: Container(
              height: 100.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new NetworkImage(
                      'https://lh3.googleusercontent.com/RHEi0Ned02-oGl6BJdvHNFiJFSX9ZCD2aFW4By_vOflNo0ton3QgQ90fZTk2b7tal6cR=s180-rw'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            title: Text(
              'Street Racing 3D',
            ),
            subtitle: Text('Ivy Racing'),
          ),
          SizedBox(height: 40.0),
          ListTile(
            leading: Container(
              height: 100.0,
              width: 100.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: new NetworkImage(
                      'https://lh3.googleusercontent.com/6pAKrBga5LKR2Gz0Ag_VOpB7n2GfHvpdWFgLAlYUbgGZzWZQijTI0PS2k9H4HW3DbQ=s180-rw'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            title: Text(
              'Dream League Soccer 2019',
            ),
            subtitle: Text('Sports'),
          ),
        ],
      ),
    );
  }
}
