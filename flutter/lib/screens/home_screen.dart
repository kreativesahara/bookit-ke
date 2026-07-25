import 'package:flutter/material.dart';
import '../widgets/service_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const _services = [
    _Service('Haircut', 'KSh 300', Icons.cut),
    _Service('Massage', 'KSh 2,000', Icons.spa),
    _Service('Car Wash', 'KSh 500', Icons.local_car_wash),
    _Service('Tutoring', 'KSh 1,500', Icons.school),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Bookit KE')),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome back!',
                      style: theme.textTheme.headlineSmall),
                  const SizedBox(height: 4),
                  Text('Book trusted local services in minutes.',
                      style: theme.textTheme.bodyMedium),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search services...',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverToBoxAdapter(
              child: Text('Popular services',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, i) => ServiceCard(
                name: _services[i].name,
                price: _services[i].price,
                icon: _services[i].icon,
              ),
              childCount: _services.length,
            ),
          ),
        ],
      ),
    );
  }
}

class _Service {
  final String name;
  final String price;
  final IconData icon;
  const _Service(this.name, this.price, this.icon);
}
