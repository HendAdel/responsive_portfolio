import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDrawarWidget extends StatelessWidget {
  final int selectedIndex;
  final void Function(int index) onClicked;
  const AppDrawarWidget(
      {required this.selectedIndex, required this.onClicked, super.key});
  Color getColor(int index) {
    if (index == selectedIndex) {
      return Colors.indigo;
    } else {
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150.w,
          child: Image.asset('assets/images/ha.jpg'),
        ),
        Expanded(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  onTap: () => onClicked(0),
                  iconColor: getColor(0),
                  textColor: getColor(0),
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  onTap: () => onClicked(1),
                  iconColor: getColor(1),
                  textColor: getColor(1),
                  leading: Icon(Icons.list_alt),
                  title: Text('Experience'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  onTap: () => onClicked(2),
                  iconColor: getColor(2),
                  textColor: getColor(2),
                  leading: Icon(Icons.cast_for_education),
                  title: Text('Skills'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  onTap: () => onClicked(3),
                  iconColor: getColor(3),
                  textColor: getColor(3),
                  leading: Icon(Icons.school),
                  title: Text('Education'),
                ),
              ),
            ],
          ),
        )),
        SizedBox(
          height: 80.w,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('All Rights Reserved to Hend Adel, 2024'),
              SizedBox(
                height: 10.w,
              ),
              Text('Version 1.0.0'),
            ],
          ),
        )
      ],
    );
  }
}
