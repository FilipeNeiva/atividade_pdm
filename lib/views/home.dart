import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, initialIndex: 0, vsync: this)
      ..addListener(_updateSelectedIndex);
  }

  void _updateSelectedIndex() {
    if (_tabController.index != _selectedIndex) {
      setState(() => _selectedIndex = _tabController.index);
    }
  }

  int _selectedIndex = 0;

  @override
  void dispose() {
    _tabController
      ..removeListener(_updateSelectedIndex)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: .center,
              children: [
                const Text('You have pushed the button this many times:'),
              ],
            ),
          ),
          Center(child: Text('Aba para locais')),
          Center(child: Text('Aba para Marcados')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _tabController.animateTo,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            label: 'Local',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mark_as_unread),
            label: 'Marcados',
          ),
        ],
      ),
    );
  }
}
