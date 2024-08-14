import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_portfolio/widgets/app_drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedTab = 0;
  String title = '';
  String content = '';

  Map<int, Widget> indexWidgetMap = {
    0: Wrap(
      spacing: 10,
      runSpacing: 10,
      children: List.generate(
        20,
        (index) => SizedBox(
          height: 200.w,
          width: 200.w,
          child: PhysicalModel(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            elevation: 5,
            shadowColor: Colors.black12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Hardware Developer'),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Make IOT projects using different controlls, for diverse fields',
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
    1: Text('Experience'),
    2: Text('Skills'),
    3: Text('Education'),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 300.w,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 7,
                  offset: const Offset(3, 0),
                )
              ],
            ),
            child: AppDrawarWidget(
              selectedIndex: selectedTab,
              onClicked: (index) {
                setState(() {
                  selectedTab = index;
                });
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                children: [
                  Container(
                    height: 100.w,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(0.3),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset:
                            const Offset(13, 0), // changes position of shadow
                      )
                    ]),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: MediaQuery.sizeOf(context).width / 1.5,
                        ),
                        child: indexWidgetMap[selectedTab],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
