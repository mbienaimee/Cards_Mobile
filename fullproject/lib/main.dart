import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
   home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        title: Text('Reine Cards'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(40.0, 95.0, 10.0, 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/reine.jpg'),
                radius: 50.0,

              ),
            ),
            SizedBox(height:100.0),
            Text(
                'NAME',
                    style: TextStyle(
                      color: Colors.grey[400],
                      letterSpacing: 2.0
                    ),
            ),
            SizedBox(height:12.0),
            Text(
              'BIENAIMEE',
              style: TextStyle(
                  color: Colors.amber[400],
                  letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold


              ),
            ),

            SizedBox(height:12.0),
            Text(
              'Current Level',
              style: TextStyle(
                  color: Colors.grey[400],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  // fontWeight: FontWeight.bold


              ),
            ),

            SizedBox(height:19.0),
            Text(
              '$currentLevel',
              style: TextStyle(
                  color: Colors.amber[400],
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold


              ),
            ),

            Row(
              children: <Widget>[
                Icon(
                    Icons.email,
                  color: Colors.grey[400],

                ),
                SizedBox(width:19.0),
                Text(
                  'bienaimée@example.com', // Example email
                  style: TextStyle(
                      color: Colors.white,
                          fontSize: 20.0
                  ), // Text color to white
                ),

              ],
            )

          ],

        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              setState(() {
                currentLevel += 1;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.grey[400],
          ),
          SizedBox(width: 10), // Spacing between the buttons
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if (currentLevel > 0) {
                  currentLevel -= 1;
                }
              });
            },
            child: Icon(Icons.remove),
            backgroundColor: Colors.grey[400],
          ),
        ],
      ),
    );
  }
}



