
// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geolocator/geolocator.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MapSample(),
//     );
//   }
// }

// class MapSample extends StatefulWidget {
//   const MapSample({Key? key}) : super(key: key);

//   @override
//   State createState() => _MyAppState();
// }

// class _MyAppState extends State<MapSample> {
//   late GoogleMapController mapController;

//   final LatLng _center = const LatLng(1.344284, 103.710322);
//   final LatLng destination = const LatLng(1.3397, 103.7067);

//   List<LatLng> polylineCoordinates = [];
//   Position? currentLocation;


//   BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
//   BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
//   BitmapDescriptor curretnLocationIcon = BitmapDescriptor.defaultMarker;



//   void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }

//   void getCurrentLocation() async {
//     try {
//       Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high,
//       );

//       setState(() {
//         currentLocation = position;
//       });
//     } catch (e) {
//       print("Error getting location: $e");
//     }
//   }

//   @override
//   void initState() {
//     super.initState();
//     getCurrentLocation();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Maps Sample App'),
//           backgroundColor: Colors.green[700],
//         ),
//         body: currentLocation == null
//             ? const Center(child: Text("Loading"))
//             : GoogleMap(
//                 onMapCreated: _onMapCreated,
//                 initialCameraPosition: CameraPosition(
//                   target: LatLng(currentLocation!.latitude, currentLocation!.longitude),
//                   zoom: 14.0,
//                 ),
//                 markers: {
//                   Marker(
//                     markerId: MarkerId("currentLocation"),
//                     position: LatLng(currentLocation!.latitude, currentLocation!.longitude),
//                   ),
//                   // Marker(
//                   //   markerId: MarkerId("source"),
//                   //   position: _center,
//                   // ),
//                   // Marker(
//                   //   markerId: MarkerId("destination"),
//                   //   position: destination,
//                   // ),
//                 },
//               ),
//       ),
//     );
//   }
// }


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State<MapSample> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(1.344284, 103.710322);
  final LatLng destination = const LatLng(1.3397, 103.7067);

  List<LatLng> polylineCoordinates = [];
  Position? currentLocation;


  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor curretnLocationIcon = BitmapDescriptor.defaultMarker;



  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      setState(() {
        currentLocation = position;
      });
    } catch (e) {
      print("Error getting location: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    getCurrentLocation();

    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      getCurrentLocation();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Rag & Bone'),
          backgroundColor: Colors.green[700],
        ),
        body: currentLocation == null
            ? const Center(child: Text("Loading"))
            : GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: LatLng(currentLocation!.latitude, currentLocation!.longitude),
                  zoom: 15.0,
                ),
                markers: {
                  Marker(
                    markerId: MarkerId("currentLocation"),
                    position: LatLng(currentLocation!.latitude, currentLocation!.longitude),
                  ),
                  // Marker(
                  //   markerId: MarkerId("source"),
                  //   position: _center,
                  // ),
                  // Marker(
                  //   markerId: MarkerId("destination"),
                  //   position: destination,
                  // ),
                },
              ),
      ),
    );
  }
}

