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
  final List<String> titels = <String>[
    'Hardware Developer',
    '.NET Senior Programmer',
    '.NET Developer',
    'Freelancer .NET Programing',
    '.NET Developer',
    '.NET Developer',
    'Freelancer .NET Programing'
  ];
  final List<String> bodies = <String>[
    "• Implemented firmware on ESP32 that was the basis for the operation of more than nine products. • Write firmware for using soil moisture sensor in agriculture researching on both ESP32, and ESP8266 controls.",
    "•	Development JPS tracking system website that track thousands of vehicles from VB.NET to C#. •	Write MVC backend APIs for the website and mobile App",
    "•	Implemented Online stores platform. •	Development student’s registration system.",
    "•	Implemented a Web Site for handmade Products. •	Implemented HR system used C#.NET 4. and SQL Express 2010 •	Implemented system for Health Insurance Cards as windows application ",
    "•	Implemented Internet Services Distributed system that mange more than 1000 client and sub distributed accounts. •	Implemented Maintenance system as windows application used C#.NET 3.5 and SQL Express 2005. ",
    "•	Implemented DMS and requirement system used Sharepoint2007 and ASP. Net 3.5. Thousands of documents transferred into records on this system •	Implemented safety system as windows application used . NET 3.5 and XML Service. This program improved the communications between the management and staff in In a huge company.•	Implemented E-Learning system.•	Implemented welding management system. •	Implemented Booking and collection in Real Estate Investment companies.•	Development stores management system.",
    "•	Implemented Designing Human Resources and Project Management system."
  ];

  late Map<int, Widget> indexWidgetMap = {
    0: const Text(
        'I have more than several years of experience in IT as a software developer. I was working on both Windows and Web applications using C#, VB.NET, ASP.NET and MS SQL Server Several versions of it, MVC, HTML, JavaScript, And now I learning .NET Core. My responsibilities include coding, managing team members, requirement analysis and creating project proposals and estimations. I love programming, I love how words and code commands can be transformed into a program, or a website, that makes the lives of those who use it easier. So take care of the quality and order of my work.'),
    1: Wrap(
      spacing: 10,
      runSpacing: 10,
      children: List.generate(
        7,
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
                Text(
                  titels[index],
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800]),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  bodies[index],
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ),
      ),
    ),
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
                  spreadRadius: 1,
                  blurRadius: 5,
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
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset:
                            const Offset(13, 0), // changes position of shadow
                      )
                    ]),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
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
