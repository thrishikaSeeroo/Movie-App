import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:the_movie_app/features/movie/presentation/screens/movie_list/movie_list_screen.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<Widget> _screens = [
    const MovieListScreen(),
    const MovieListScreen(),
    const MovieListScreen()
  ];
  int _currentIndex = 0;
  DateTime? backButtonPressedTime;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return WillPopScope(
      onWillPop: () => onWillPopClose(),
      child: Scaffold(
        body: _screens[_currentIndex],
        bottomNavigationBar: Container(
          // color: Colors.white24,
          child: Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 4),
            child: SizedBox(
              height: 65, // Custom height
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.home,
                        size: 30,
                        color: _currentIndex == 0
                            ? theme.primaryColor
                            : theme.disabledColor),
                    onPressed: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.search,
                        size: 30,
                        color: _currentIndex == 1
                            ? theme.primaryColor
                            : theme.disabledColor),
                    onPressed: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.account_circle_outlined,
                        size: 30,
                        color: _currentIndex == 2
                            ? theme.primaryColor
                            : theme.disabledColor),
                    onPressed: () {
                      setState(() {
                        _currentIndex = 2;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> onWillPopClose() async {
    DateTime currentTime = DateTime.now();
    bool backButton = backButtonPressedTime == null ||
        currentTime.difference(backButtonPressedTime!) > Duration(seconds: 3);
    if (backButton) {
      backButtonPressedTime = currentTime;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Tap again to close the app'),
            duration: Duration(seconds: 1)),
      );
      return false;
    } else {
      Get.back();
    }
    return true;
  }
}
