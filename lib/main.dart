import 'package:flutter/material.dart';
import 'package:flutter_scaffold1/data/loaddata.dart';
import 'domain/affirmation.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScaffoldSample(),
    );
  }
}

class ScaffoldSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter DEv")),
      body: AffirmationList(),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        child: Icon(Icons.add),
        elevation: 10,
      ),
      drawer: Drawer(
        child: ListView(children: [
          DrawerHeader(child: Text("My First Drawer")),
          ListTile(title: Text("Item1")),
          ListTile(
            title: Text("Item2"),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.account_circle),
            ),
          ],
          onTap: (int indexOfItem) {}),
    );
  }
}

class AffirmationCard extends StatelessWidget {
  Affirmation affirmation;
  AffirmationCard(this.affirmation);
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Theme.of(context).colorScheme.outline,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              affirmation.image,
              height: 194,
              width: 600,
              fit: BoxFit.cover,
            ),
            Text(affirmation.desc, style: TextStyle(fontSize: 40))
          ],
        ));
  }
}

class AffirmationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (ListView.builder(
      itemCount: loaddata().length,
      itemBuilder: (context, index) {
        return AffirmationCard(loaddata()[index]);
      },
    ));
  }
}
