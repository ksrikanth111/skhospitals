import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sk Hospitals'),
        
      ),
      drawer: Drawer(
        
        child: ListView(
          children: [
            DrawerHeader(
              child: Center(child: Text('Guest User')),
              ),
            InkWell(
              child: Container(
                color: Colors.deepPurpleAccent[100],
                child: ListTile(
                  title: Text('About Hospital'),
                ),
              ),
              onTap: (){

              },
            ),
            Divider(thickness: 1,),
            InkWell(
              child: Container(
                color: Colors.deepPurpleAccent[100],
                child: ListTile(
                  title: Text('About Doctors Specialist'),
                ),
              ),
              onTap: (){

              },
            ),
            Divider(thickness: 1,),
            InkWell(
              child: Container(
                color: Colors.deepPurpleAccent[100],
                child: ListTile(
                  title: Text('Online Appointments'),
                ),
              ),
              onTap: (){

              },
            ),
            Divider(thickness: 1,),
            InkWell(
              child: Container(
                color: Colors.deepPurpleAccent[100],
                child: ListTile(
                  title: Text('Tariff Details'),
                ),
              ),
              onTap: (){

              },
            ),
            Divider(thickness: 1,),
            InkWell(
              child: Container(
                color: Colors.deepPurpleAccent[100],
                child: ListTile(
                  title: Text('Feed back'),
                ),
              ),
              onTap: (){

              },
            ),
            Divider(thickness: 1,),
          ],
        ),
      ),
      body: Center(child: Text('Welcome Home Page'),),
      
    );
  }
}