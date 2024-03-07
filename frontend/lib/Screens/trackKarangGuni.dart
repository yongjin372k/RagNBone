
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
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

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
  Set<Marker> markers = Set<Marker>();
  Marker? currentLocationMarker;


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
      if (currentLocation != null) {
      currentLocationMarker = Marker(
        markerId: MarkerId("currentLocation"),
        position: LatLng(currentLocation!.latitude, currentLocation!.longitude),
      );
      markers.add(currentLocationMarker!);
    }
    } catch (e) {
      print("Error getting location: $e");
    }
  }

  void createMarkersFromData(Map<String, dynamic> data) {
    // Assuming your API response contains a list of locations
    List<dynamic> locations = data['locations'];

    markers.clear(); // Clear existing markers

    for (var location in locations) {
      double latitude = location['latitude'];
      double longitude = location['longitude'];

      Marker marker = Marker(
        markerId: MarkerId("$latitude-$longitude"),
        position: LatLng(latitude, longitude),
        // You can customize the marker icon here if needed
        icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
        infoWindow: InfoWindow(title: location['name']),
      );

      markers.add(marker);
    }

    if (currentLocation != null) {
      currentLocationMarker = Marker(
        markerId: MarkerId("currentLocation"),
        position: LatLng(currentLocation!.latitude, currentLocation!.longitude),
      );
      markers.add(currentLocationMarker!);
    }

    // Update the map
    setState(() {});
  }

  // void fetchDataFromApi() async {
  //   try {
  //     Map<String, dynamic> data = await ApiService.fetchData();
  //     // Handle the fetched data here
  //     markers.clear();
  //     createMarkersFromData(data);
  //     print("Data from API: $data");
  //   } catch (e) {
  //     print("Error fetching data: $e");
  //   }
  // }

  void fetchDataFromApi() async {
  try {
    List<dynamic> data = await ApiService.fetchData();
    // Handle the fetched data here
    markers.clear();
    createMarkersFromData({'locations': data});
    print("Data from API: $data");
  } catch (e) {
    print("Error fetching data: $e");
  }
}

  @override
  void initState() {
    super.initState();
    getCurrentLocation();

    Timer.periodic(Duration(seconds: 10), (Timer timer) {
      getCurrentLocation();
      fetchDataFromApi();
    });
  }

  // @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       appBar: AppBar(
  //         title: const Text('Rag & Bone'),
  //         backgroundColor: Colors.green[700],
  //       ),
  //       body: currentLocation == null
  //           ? const Center(child: Text("Loading"))
  //           : GoogleMap(
  //               onMapCreated: _onMapCreated,
  //               initialCameraPosition: CameraPosition(
  //                 target: LatLng(currentLocation!.latitude, currentLocation!.longitude),
  //                 zoom: 15.0,
  //               ),
  //               markers: markers,
                
  //               // markers: {
  //               // Marker(
  //               //    markerId: MarkerId("currentLocation"),
  //               //   position: LatLng(currentLocation!.latitude, currentLocation!.longitude),
  //               // ),
  //               // //   // Marker(
  //               // //   //   markerId: MarkerId("source"),
  //               // //   //   position: _center,
  //               // //   // ),
  //               // //   // Marker(
  //               // //   //   markerId: MarkerId("destination"),
  //               // //   //   position: destination,
  //               // //   // ),
  //               //  },
  //             ),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          currentLocation == null
              ? Center(child: CircularProgressIndicator())
              : GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(currentLocation!.latitude, currentLocation!.longitude),
                    zoom: 15.0,
                  ),
                  markers: markers,
                ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 254, 254, 242), // Lighter hue
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: Offset(0, -2),
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16), // Adjust padding
              height: 100, // Adjust height
              child: ElevatedButton(
                onPressed: () {
                  // Your action here
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 27, 75, 28), // Button background color
                  onPrimary: Colors.white, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Adjust radius here
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min, // To make the column wrap its content
                  children: [
                    Text(
                      "Wish to speak to a Karang Guni?",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(height: 6), // Adjust spacing based on your design
                    Text(
                      "Message a Karang Guni now!",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ApiService {
  static final String baseUrl = "http://192.168.206.18:9999";

  static Future<List<dynamic>> fetchData() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/api/v1/location/read'));
      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}



