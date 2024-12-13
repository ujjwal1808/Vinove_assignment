import 'package:flutter/material.dart';

import 'screens/attendance_screen.dart';

void main() {
  runApp(MaterialApp(
    title: "Attendance App",
    home: const HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    routes: {
      '/attendance': (context) => AttendanceScreen(),
    },
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage("lib/assets/user.png"),
                    radius: 30,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Anushree Gupta",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    "anu12@gmail.com",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text("Attendance"),
              onTap: () {
                Navigator.pushNamed(context, '/attendance');
              },
            ),
            ListTile(
              leading: const Icon(Icons.timer),
              title: const Text("Timer"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.local_activity),
              title: const Text("Activity"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.view_timeline),
              title: Text("Timesheet"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.report),
              title: Text("Report"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.streetview),
              title: Text("Jobsite"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Team"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.timer_off),
              title: Text("Time off"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.schedule),
              title: Text("Schedules"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.people),
              title: Text("Request to join Organisation"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.security_rounded),
              title: Text("Change Password"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("FAQ & Help"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text("Privacy Policy"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.verified),
              title: const Text("Version 2.12(1)"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Welcome to the Attendance App!",
              style: TextStyle(
                fontSize: 24, // Larger font size
                fontWeight: FontWeight.bold, // Bold font
                color: Colors.blue, // Blue color
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16), // Spacing between the two lines
            Text(
              "To check attendance, location, and date-time, click on 'Attendance' in the navigation bar.",
              style: TextStyle(
                fontSize: 18, // Slightly smaller font
                color: Colors.black54, // Greyish color
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
