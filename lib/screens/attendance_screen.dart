import 'package:flutter/material.dart';

import 'location_screen.dart';

class AttendanceScreen extends StatelessWidget {
  AttendanceScreen({super.key});

  final List<Map<String, String>> members = [
    {
      "name": "Anushree",
      "time": "08:30 AM",
      "image": "lib/assets/user.png"
    },
    {
      "name": "Ishaan",
      "time": "09:00 AM",
      "image": "lib/assets/user.png"
    },
    {
      "name": "Ujjwal",
      "time": "10:15 AM",
      "image": "lib/assets/user.png"
    },
    {
      "name": "Maaz",
      "time": "11:00 AM",
      "image": "lib/assets/user.png"
    },
    {
      "name": "Adarsh",
      "time": "12:00 PM",
      "image": "lib/assets/user.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Attendance')),
      body: ListView.builder(
        itemCount: members.length,
        itemBuilder: (context, index) {
          final member = members[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(member['image']!),
              ),
              title: Text(member['name']!),
              subtitle: Text("Last Active: ${member['time']}"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: const Icon(Icons.calendar_today),
                    onPressed: () {
                      _openCalendar(context, member['name']!);
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.location_on),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LocationScreen(),
                          settings: RouteSettings(arguments: member['name']),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _openCalendar(BuildContext context, String memberName) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime.now(),
    );

    if (selectedDate != null) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
              "Showing $memberName's data for ${selectedDate.toLocal()}"
                  .split(' ')[0]),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }
}
