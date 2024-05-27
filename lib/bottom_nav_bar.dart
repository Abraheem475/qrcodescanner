// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:qrcodescanner/helper_classes/colors_classes.dart';
// import 'package:qrcodescanner/helper_classes/images_path/images_path.dart';
// import 'package:qrcodescanner/provider_classes/navbar_provider.dart';
//
// class BottomNavBar extends StatelessWidget {
//   const BottomNavBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var bottomBarProvider = Provider.of<BottomBarProvider>(context, listen: false);
//
//     return Scaffold(
//       backgroundColor: Colors.grey,
//       body: Consumer<BottomBarProvider>(
//         builder: (context, value, child) {
//           return value.myList[value.myIndex];
//         },
//       ),
//       bottomNavigationBar: BottomAppBar(
//         shape: const CircularNotchedRectangle(),
//         color: Colors.white,
//         surfaceTintColor: Colors.transparent,
//         child: Consumer<BottomBarProvider>(builder: (context,value,child){
//           return Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   bottomBarProvider.changeMyIndex(0);
//                 },
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(ImagesPath.homeButton,height: 25,color: value.myIndex == 0 ? appColor : Colors.grey),
//                     const SizedBox(height: 5.0),
//                     Text("HOME", style: TextStyle(fontSize: 10.0, color: value.myIndex == 0 ? appColor : Colors.grey)),
//                   ],
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   bottomBarProvider.changeMyIndex(2);
//                 },
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Icon(null),
//                     const SizedBox(height: 5.0),
//                     Text("SELL", style: TextStyle(fontSize: 10.0, color: value.myIndex == 2 ? appColor : Colors.grey)),
//                   ],
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   bottomBarProvider.changeMyIndex(3);
//                 },
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(ImagesPath.adsButton,height: 25,color: value.myIndex == 3 ? appColor : Colors.grey),
//                     const SizedBox(height: 5.0),
//                     Text("MY ADS", style: TextStyle(fontSize: 10.0, color: value.myIndex == 3 ? appColor : Colors.grey)),
//                   ],
//                 ),
//               ),
//             ],
//           );
//         },
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
//       floatingActionButton: Consumer<BottomBarProvider>(
//         builder: (context, value, child) {
//           return FloatingActionButton(
//             backgroundColor: Colors.transparent,
//             focusElevation: 0.0,
//             splashColor: Colors.transparent,
//             focusColor: Colors.transparent,
//             highlightElevation: 0.0,
//             disabledElevation: 0.0,
//             elevation: 0.0,
//             onPressed: () {
//               value.changeMyIndex(2);
//             },
//             child: Image.asset(
//               ImagesPath.scanButton,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
