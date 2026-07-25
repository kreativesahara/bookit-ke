import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  static const _categories = [
    ('Beauty', Icons.spa),
    ('Auto', Icons.local_car_wash),
    ('Education', Icons.school),
    ('Home', Icons.home_repair_service),
    ('Health', Icons.favorite),
    ('Events', Icons.celebration),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Services')),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: _categories.map((c) {
          return Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)),
            child: InkWell(
              borderRadius: BorderRadius.circular(16),
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(c.$2, size: 40),
                  const SizedBox(height: 8),
                  Text(c.$1,
                      style: const TextStyle(fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
