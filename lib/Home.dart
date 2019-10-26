import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter/services.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {
  PanelController _pc = new PanelController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("SlidingUpPanelExample"),
      ),
      body: SlidingUpPanel(

        panel: _panel(),
        parallaxEnabled: true,
        parallaxOffset: .5,
        color: Colors.grey,
        defaultPanelState: PanelState.OPEN,
        //collapsed: _floatingCollapsed(),
//        panel: Center(
//          child: Text("This is the sliding Widget"),
//        ),
        body: Container(
          color: Colors.purple,
          child: ListView(
            children: <Widget>[
              dataItem(),
              dataItem(),
              dataItem(),
              dataItem(),
              dataItem()

            ],
          ),
        ),
      )
      ,
    );
  }

  dataItem() {
    return Container(
      child: Column(
        children: <Widget>[


          Container(
            margin: EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Image.network(
                "https://images.pexels.com/photos/3115006/pexels-photo-3115006.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940",
                height: 150.0,
                fit: BoxFit.cover,
                width: MediaQuery
                    .of(context)
                    .size
                    .width / 0.5,
              ),
            ),
          ),

          SizedBox(height: 10.0,),


        ],
      ),
    );
  }

  Widget _floatingCollapsed() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),
      ),
      child: Center(
        child: Column(
          children: <Widget>[

            Icon(Icons.arrow_drop_up, color: Colors.white,),
            Text(
              "More Doctor List",
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget _floatingPanel() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(24.0)),
          boxShadow: [
            BoxShadow(
              blurRadius: 20.0,
              color: Colors.grey,
            ),
          ]
      ),
      margin: EdgeInsets.only(top: 55.0),
      child: ListView(
        children: <Widget>[

        ],
      ),
    );
  }


  Widget _panel(){
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 12.0,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 100,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(12.0))
                ),
              ),
            ],
          ),

          SizedBox(height: 18.0,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Explore Pittsburgh",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 24.0,
                  color: Colors.white
                ),
              ),
            ],
          ),

          SizedBox(height: 36.0,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              _button("Popular", Icons.favorite, Colors.blue),
              _button("Food", Icons.restaurant, Colors.red),
              _button("Events", Icons.event, Colors.amber),
              _button("More", Icons.more_horiz, Colors.green),
            ],
          ),

          SizedBox(height: 36.0,),

          Container(
            padding: const EdgeInsets.only(left: 24.0, right: 24.0),
            child: Column(
              children: <Widget>[

                Text("Images", style: TextStyle(fontWeight: FontWeight.w600,)),

                SizedBox(height: 12.0,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Image.network(
                      "https://images.fineartamerica.com/images-medium-large-5/new-pittsburgh-emmanuel-panagiotakis.jpg",
                      height: 120.0,
                      width: (MediaQuery.of(context).size.width - 48) / 2 - 2,
                      fit: BoxFit.cover,
                    ),

                    Image.network(
                      "https://cdn.pixabay.com/photo/2016/08/11/23/48/pnc-park-1587285_1280.jpg",
                      width: (MediaQuery.of(context).size.width - 48) / 2 - 2,
                      height: 120.0,
                      fit: BoxFit.cover,
                    ),

                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: 36.0,),




        ],
      ),
    );
  }

  Widget _button(String label, IconData icon, Color color){
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Icon(
            icon,
            color: Colors.white,
          ),
          decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
              boxShadow: [BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.15),
                blurRadius: 8.0,
              )]
          ),
        ),

        SizedBox(height: 12.0,),

        Text(label,
        style: TextStyle(
          fontSize: 15.0,
          color: Colors.white
        ),
        ),
      ],

    );
  }







}
