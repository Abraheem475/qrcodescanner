import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrcodescanner/helper_classes/images_path/images_path.dart';
import '../../helper_classes/colors_classes.dart';
import '../../provider_classes/navbar_provider.dart';

class NavBarScreen extends StatelessWidget {
  NavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<BottomBarProvider>(
        builder: (context, value, child) {
          return value.myList[value.myIndex];
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Consumer<BottomBarProvider>(
        builder: (context, value, child) {
          return FloatingActionButton(
            onPressed: () {
              value.changeMyIndex(1);
            },
            child: Container(
              width: 60.0,
              height: 60.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                gradient: gradientColor,
              ),
              child:  Image.asset(ImagesPath.scanButton),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        height: 83.0,
        color: Colors.white,
        elevation: 0.0,
        notchMargin: 7.0,
        shape: const CircularNotchedRectangle(),
        child: Container(
          height: 60.0,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 20.0,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: Consumer<BottomBarProvider>(
              builder: (context, value, child) {
                return BottomNavigationBar(
                  selectedItemColor: appColor,
                  unselectedItemColor: Colors.grey,
                  onTap: (index) {
                    if (value.myIndex != index) {
                      value.changeMyIndex(index);
                    }
                  },
                  currentIndex: value.myIndex,
                  items: const [
                    BottomNavigationBarItem(icon: Icon(Icons.qr_code_2_sharp,size: 25.0,), label: "Generator",),
                    BottomNavigationBarItem(icon: Icon(null), label: ""),
                    BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
