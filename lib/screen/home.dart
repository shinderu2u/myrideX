import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:myridex/utils/core.dart';


class MyHomePage extends StatefulWidget{
  MyHomePage({Key key,this.title}) : super(key:key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();


}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Map()
    );
  }
}

class Map extends StatefulWidget {

  @override
  _MapState createState() => _MapState();

}

class _MapState extends State<Map> {
  GoogleMapController mapController;
  static const _initialPosition = LatLng( 37.422, -122.084 );
  LatLng _lastPostion = _initialPosition;
  final Set<Marker> _markers ={};

  get locationController => null;

  get destinationController => null;

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          body: Stack(
              children: <Widget>[
                GoogleMap( initialCameraPosition: CameraPosition(
                    target: _initialPosition,
                    zoom: 10 ),
                  onMapCreated: onCreated,
                  myLocationEnabled: true,
                  mapType: MapType.normal,
                  compassEnabled:  true,
                  onCameraMove: _onCameraMove,
                ),
                Positioned(
                  top: 50.0,
                  right: 15.0,
                  left: 15.0,
                  child: Container(
                    height: 50.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1.0, 5.0),
                            blurRadius: 10,
                            spreadRadius: 3)
                      ],
                    ),
                    child: TextField(
                      cursorColor: Colors.black,
                      controller: locationController,
                      decoration: InputDecoration(
                        icon: Container(
                          margin: EdgeInsets.only(left: 20, top: 5),
                          width: 10,
                          height: 10,
                          child: Icon(
                            Icons.location_on,
                            color: green,
                          ),
                        ),
                        hintText: "pick up",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15.0, top: 16.0),
                      ),
                    ),
                  ),
                ),

                Positioned(
                  top: 105.0,
                  right: 15.0,
                  left: 15.0,
                  child: Container(
                    height: 50.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(1.0, 5.0),
                            blurRadius: 10,
                            spreadRadius: 3)
                      ],
                    ),
                    child: TextField(
                      cursorColor: Colors.black,
                      controller: destinationController,
                      textInputAction: TextInputAction.go,
                      onSubmitted: (value) {
                        sendRequest(value);
                      },
                      decoration: InputDecoration(
                        icon: Container(
                          margin: EdgeInsets.only(left: 20, top: 5),
                          width: 10,
                          height: 10,
                          child: Icon(
                            Icons.motorcycle,
                            color: green,
                          ),
                        ),
                        hintText: "destination?",
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 15.0, top: 16.0),
                      ),
                    ),
                  ),
                ),     
              ]
          )
      );
    }

  void onCreated(GoogleMapController controller){
    setState(() {
      mapController = controller;
    });
  }



  void _onCameraMove(CameraPosition position) {
  }

  void sendRequest(String value) {}
}




