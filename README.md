# ScaffoldApp
## Activity1: New Project using MaterialApp
1. create a new project using MaterialApp as the root Widget
## New Widget Using scaffold 
1. create a new stateless widget named SampleScaffold containing Scaffold as a root Widget
   
```dart
class ScaffoldSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Flutter Dev")),
        body: Center(child: Text("Welcome to flutter Dev")),)
      }}
```
2. Attach this widget to home of your Material App and test your App
```dart
MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScaffoldSample(),
    );
```
3. Add a floatting Action button as parameter of your Scaffold with the icon add and test your app 
```dart
Scaffold(
        appBar: .......,
        body: .......,
        floatingActionButton: FloatingActionButton(onPressed: (() {}),
        child: Icon(Icons.add),
        elevation: 10,                
        )
      )
```
4. Add a drawer to your scaffold and test your app , First the drawer will contain a DrawerHeader
```dart
drawer: Drawer(child: DrawerHeader(child: Text("My First Drawer")))
```
5. in the place of DrawerHeader, We will define a ListView Containing as children a DrawerHeader and a 2 Items as ListTile
```dart

Drawer(child: ListView(children: [
                DrawerHeader(child: Text("My First Drawer")),
                ListTile(title: Text("Item1")),
                ListTile(title: Text("Item2"),) 
                   ]),)
```
6. Add bottomNavigationBar usin BottomNavigationBar and BottomNavigationBarItem and test a gain your app

   ```dart
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
       
   ```

## Activity2: Using Layouts to create a Structured Widget
1. create New Widget Named AffirmationCard that contain a column containing an image and a text like this (the image will be in assets directory)
```dart
Column(
      children: [Image.asset("assets/image1.jpg", height: 194,),
                Text("Affirmation Title", textAlign: TextAlign.center,)
      ],
    )
```

   2. add this Widget to body of your scaffold and test it
   3. add a card widget to your widget as a parent of your Column
      ```dart
      Card(child:Column(
      mainAxisSize: MainAxisSize.min,
      
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Image.asset("assets/image1.jpg", height: 194,),
                Text("Affirmation Title", textAlign: TextAlign.center,)
      ],
    ))
      ```
 4.Improve Design of your widget and test it

 ```dart
Image.asset("assets/image1.jpg", height: 194,width:600,fit: BoxFit.cover,),
 Text("Affirmation Title",style: TextStyle(fontSize: 40))
```
5. Add a 
   
