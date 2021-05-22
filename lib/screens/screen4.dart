import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Screen 4"),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// // ignore: import_of_legacy_library_into_null_safe
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// class Screen4 extends StatefulWidget {
//   @override
//   _Screen4State createState() => _Screen4State();
// }

// class _Screen4State extends State<Screen4> {
//   final List<String> images = [
//     "https://images-na.ssl-images-amazon.com/images/I/81aF3Ob-2KL._UX679_.jpg",
//     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgUgs8_kmuhScsx-J01d8fA1mhlCR5-1jyvMYxqCB8h3LCqcgl9Q",
//     "https://ae01.alicdn.com/kf/HTB11tA5aiAKL1JjSZFoq6ygCFXaw/Unlocked-Samsung-GALAXY-S2-I9100-Mobile-Phone-Android-Wi-Fi-GPS-8-0MP-camera-Core-4.jpg_640x640.jpg",
//     "https://media.ed.edmunds-media.com/gmc/sierra-3500hd/2018/td/2018_gmc_sierra-3500hd_f34_td_411183_1600.jpg",
//     "https://hips.hearstapps.com/amv-prod-cad-assets.s3.amazonaws.com/images/16q1/665019/2016-chevrolet-silverado-2500hd-high-country-diesel-test-review-car-and-driver-photo-665520-s-original.jpg",
//     "https://media.onthemarket.com/properties/6191869/797156548/composite.jpg",
//     "https://media.onthemarket.com/properties/6191840/797152761/composite.jpg",
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: StaggeredGridView.countBuilder(
//         crossAxisCount: 3,
//         itemCount: images.length,
//         itemBuilder: (BuildContext context, int index) => Card(
//           child: GestureDetector(
//             onTap: () {},
//             child: Column(
//               children: <Widget>[
//                 Image.network(images[index]),
//               ],
//             ),
//           ),
//         ),
//         staggeredTileBuilder: (int index) => new StaggeredTile.fit(1),
//         mainAxisSpacing: 2.0,
//         crossAxisSpacing: 2.0,
//       ),
//     );
//   }
// }
