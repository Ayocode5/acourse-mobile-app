import 'package:acourse_mobile_app/theme.dart';
import 'package:flutter/material.dart';

// class ClassTab extends StatefulWidget {
//   @override
//   _ClassTabState createState() => _ClassTabState();
// }

// class _ClassTabState extends State<ClassTab>
//     with SingleTickerProviderStateMixin {
//   TabController? _tabController;

//   @override
//   void initState() {
//     _tabController = new TabController(length: 2, vsync: this);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height / 2,
//               child: Center(
//                 child: Text(
//                   "Tabbar with out Appbar",
//                   style: TextStyle(
//                       color: Colors.white, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               color: Colors.blue,
//             ),
//             TabBar(
//               unselectedLabelColor: Colors.black,
//               labelColor: Colors.red,
//               isScrollable: true,
//               tabs: [
//                 Tab(
//                   text: '1st tab',
//                 ),
//                 Tab(
//                   text: '2 nd tab',
//                 )
//               ],
//               controller: _tabController,
//               indicatorSize: TabBarIndicatorSize.tab,
//             ),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   Container(
//                       child: Column(
//                     children: [
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                       Text('halo'),
//                     ],
//                   )),
//                   Text('Person')
//                 ],
//                 controller: _tabController,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class ClassTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                automaticallyImplyLeading: false,
                backgroundColor: whiteColor,
                flexibleSpace: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Container(
                    //   height: 250,
                    //   color: greenColor,
                    //   child: Center(
                    //     child: Text(
                    //       'youtube player',
                    //       style: whiteTextStyle,
                    //     ),
                    //   ),
                    // ),
                    TabBar(
                      isScrollable: true,
                      labelPadding: EdgeInsets.symmetric(
                        horizontal: 55,
                      ),
                      labelColor: whiteColor,
                      unselectedLabelColor: grayColor,
                      indicator: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(15), // Creates border
                        color: blueColor,
                      ),
                      tabs: [
                        Tab(
                          child: Text('Lessons'),
                        ),
                        Tab(
                          child: Text('About'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: <Widget>[
              Center(
                child: Text(
                  'Lessons TabView',
                ),
              ),
              Center(
                child: Text(
                  'About TabView',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
