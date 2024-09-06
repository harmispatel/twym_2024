import 'package:flutter/material.dart';

import '../../../utils/common_colors.dart';
import '../../account/account_view.dart';
import '../../create_event/create_event_view.dart';
import '../../home/home_view.dart';
import '../../search/search_view.dart';
import '../../twym_book/twym_book_view.dart';

// class BottomNavBarView extends StatefulWidget {
//   @override
//   State<BottomNavBarView> createState() => _BottomNavBarViewState();
// }
//
// class _BottomNavBarViewState extends State<BottomNavBarView> {
//   int _selectedIndex = 0;
//
//   static final List<Widget> _widgetOptions = <Widget>[
//     HomeView(),
//     SearchView(),
//     CreateEventView(),
//     TwymBookView(),
//     ProfileView()
//   ];
//
//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: NavigationBar(
//         selectedIndex: _selectedIndex,
//         onDestinationSelected: _onItemTapped,
//         destinations: const [
//           NavigationDestination(
//             icon: Icon(Icons.home),
//             selectedIcon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.search),
//             selectedIcon: Icon(Icons.search),
//             label: 'Search',
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.create_new_folder),
//             selectedIcon: Icon(Icons.create_new_folder),
//             label: 'Create',
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.star),
//             selectedIcon: Icon(Icons.star),
//             label: 'twymbook',
//           ),
//           NavigationDestination(
//             icon: Icon(Icons.person_outline),
//             selectedIcon: Icon(Icons.person_outline),
//             label: 'Account',
//           ),
//         ],
//       ),
//     );
//   }
// }

///

class BottomNavBarView extends StatefulWidget {
  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    SearchView(),
    CreateEventView(),
    TwymBookView(),
    AccountView()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(22),
            topRight: Radius.circular(22),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          backgroundColor: CommonColors.mTransparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          items: [
            _buildBottomNavigationBarItem(Icons.home_outlined, 'Home', 0),
            _buildBottomNavigationBarItem(Icons.search, 'Search', 1),
            _buildBottomNavigationBarItem(Icons.control_point, 'Create', 2),
            _buildBottomNavigationBarItem(
                Icons.star_border_rounded, 'twymbook', 3),
            _buildBottomNavigationBarItem(Icons.person_outline, 'Account', 4),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(
      IconData icon, String label, int index) {
    return BottomNavigationBarItem(
      icon: Column(
        children: [
          if (_selectedIndex == index)
            Container(
              height: 4,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              margin: const EdgeInsets.only(bottom: 4),
            ),
          Icon(icon),
        ],
      ),
      label: label,
    );
  }
}
