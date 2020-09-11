import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:PreferredSize(
         preferredSize: Size.fromHeight(120),
        child: Container(
            // color: Colors.white,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height/40,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      IconButton(
                        icon: Image.asset("assets/images/hambuger.jpeg",
                          height: MediaQuery.of(context).size.height/15,
                          alignment: Alignment.topLeft,
                        ),
                        onPressed: null,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/4.65,
                      ),
                       _title(),
                      SizedBox(
                        width: MediaQuery.of(context).size.width/4.75,
                      ),
                      IconButton(
                              icon: Image.asset("assets/images/user.jpeg",
                                  height: MediaQuery.of(context).size.height/8,
                                alignment: Alignment.topRight,
                               ),
                              onPressed: null,
                            ),
                    ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height/45,
                ),
              Text("Today",
                style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.w600,
              ),
             ),
            ],
          ),
           ),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2.5,
                spreadRadius: 0,
                offset: Offset(0,1)
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.white,
        fixedColor:Colors.white,
        items: <BottomNavigationBarItem>[
          _home(),
          _menu(),
          _spoons(),
          _dumble(),
          _yoga(),
          //_home(),
        ],
      ) ,
      body:SingleChildScrollView( scrollDirection: Axis.vertical,
       child: ConstrainedBox(
         constraints: BoxConstraints(
             maxHeight: MediaQuery.of(context).size.height -
                 MediaQuery.of(context).padding.top-200),
         child: ListView(
           shrinkWrap: true,
           scrollDirection: Axis.vertical,
           children: <Widget>[
             _calories(),
             _QuestionOne(),
             _QuestionTwo(),
             _QuestionThree(),
             _QuestionFour()
           ],
         ),
       ),
     ),
    );
  }
  Widget _title(){
    return Container(
      height: MediaQuery.of(context).size.height/20,
      width: MediaQuery.of(context).size.width/4 ,
      child: Image.asset("assets/images/title.jpeg"),
    );
  }
  Widget _calories(){
    return Container(
      height: MediaQuery.of(context).size.height/7.5,
      width: MediaQuery.of(context).size.width/8.0 ,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text("  0",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(" of 2759 of Cal Eaten",
                  style: TextStyle(
                    fontSize: 16,
                    //color: Colors.blueAccent,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20,right: 20),
            child:Divider( color: Colors.grey,thickness: 3, height: MediaQuery.of(context).size.height/120,),
          ),

          // bar
        ],
      ),
      );
}
  Widget _QuestionOne(){
    return Material( color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(20),
        child:Container( color: Colors.white,
          child: ExpansionTile(
            initiallyExpanded: true,
            subtitle: Text("0/828 cal",
              style: TextStyle(color: const Color(0xff000000),),),
            title: Text(
              'BreakFast',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 15,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
            children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      height: 50,
                      width: double.infinity,
                      child: Center(
                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(
                                      Icons.add,
                                      color: Color(0xff000000),
                                    ),
                                  onPressed: null,
                                  ),
                                Text("Add another recipe",)
                              ],
                            ),
                          ), //Flat number
                      ),
                  ]
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
  Widget _QuestionTwo(){
    return Material( color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(20),
        child:Container( color: Colors.white,
          child: ExpansionTile(
            initiallyExpanded: true,
            subtitle: Text("0/1104 cal",
              style: TextStyle(color: const Color(0xff000000),),),
            title: Text(
              'Lunch',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 15,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
            children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      height: 50,
                      width: double.infinity,
                      child: Center(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Color(0xff000000),
                              ),
                              onPressed: null,
                            ),
                            Text("Add another recipe",)
                          ],
                        ),
                      ), //Flat number
                    ),
                  ]
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
  Widget _QuestionThree(){
    return Material( color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(20),
        child:Container( color: Colors.white,
          child: ExpansionTile(
            initiallyExpanded: true,
            subtitle: Text("0/552 cal",
              style: TextStyle(color: const Color(0xff000000),),),
            title: Text(
              'Dinner',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 15,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
            children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      height: 50,
                      width: double.infinity,
                      child: Center(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Color(0xff000000),
                              ),
                              onPressed: null,
                            ),
                            Text("Add another recipe",)
                          ],
                        ),
                      ), //Flat number
                    ),
                  ]
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
  Widget _QuestionFour(){
    return Material( color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(20),
        child:Container( color: Colors.white,
          child: ExpansionTile(
            initiallyExpanded: true,
            subtitle: Text("0/276 cal",
              style: TextStyle(color: const Color(0xff000000),),),
            title: Text(
              'Snacks',
              style: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 15,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
            children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      height: 50,
                      width: double.infinity,
                      child: Center(
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(
                                Icons.add,
                                color: Color(0xff000000),
                              ),
                              onPressed: null,
                            ),
                            Text("Add another recipe",)
                          ],
                        ),
                      ), //Flat number
                    ),
                  ]
              ),
            ],
          ),
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
  BottomNavigationBarItem _home() {
    return BottomNavigationBarItem(
      backgroundColor: Color(0xffffffff),
      icon:Image.asset("assets/images/home.jpeg",
        height: MediaQuery.of(context).size.height/45,
       ),
      title:Text('',),
    );
  }
  BottomNavigationBarItem _menu() {
    return BottomNavigationBarItem(
      backgroundColor: Color(0xffffffff),
      icon:Image.asset("assets/images/menu.jpeg",
        height: MediaQuery.of(context).size.height/30,
      ),
      title: Text('',),
    );
  }
  BottomNavigationBarItem _yoga() {
    return BottomNavigationBarItem(
      backgroundColor: Color(0xffffffff),
      icon:Image.asset("assets/images/yoga.jpeg",
        height: MediaQuery.of(context).size.height/35,
        width:MediaQuery.of(context).size.width/5,
      ),
      title: Text('',),
    );
  }
  BottomNavigationBarItem _spoons() {
    return BottomNavigationBarItem(
      backgroundColor: Color(0xffffffff),
      icon:Image.asset("assets/images/spoons.png",
        height: MediaQuery.of(context).size.height/45,
        width:MediaQuery.of(context).size.width/5 ,
      ),
      title:Text('',),
    );
  }
  BottomNavigationBarItem _dumble() {
    return BottomNavigationBarItem(
      backgroundColor: Color(0xffffffff),
      icon:Image.asset("assets/images/dumble.jpeg",
        height: MediaQuery.of(context).size.height/35,
        width:MediaQuery.of(context).size.width/5 ,
      ),
      title:Text('',),
    );
  }
}

