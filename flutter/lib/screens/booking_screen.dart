import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bookings = [
      ('Haircut', 'Today, 2:00 PM', Icons.cut),
      ('Massage', 'Tomorrow, 10:00 AM', Icons.spa),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('My Bookings')),
      body: bookings.isEmpty
          ? const Center(child: Text('No bookings yet'))
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: bookings.length,
              separatorBuilder: (_, __) => const Divider(),
              itemBuilder: (context, i) {
                final b = bookings[i];
                return ListTile(
                  leading: CircleAvatar(child: Icon(b.$3)),
                  title: Text(b.$1),
                  subtitle: Text(b.$2),
                  trailing: Chip(label: const Text('Confirmed')),
                );
              },
            ),
    );
  }
}
