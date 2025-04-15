import 'package:flutter/material.dart';

void main() {
  runApp(StudentListApp());
}

class StudentListApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student List',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.pink[50],
        appBar: AppBar(
          title: Text('Student Directory'),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Vertical List',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(),
              Expanded(
                child: ListView(
                  children: [
                    studentCard('Ahmed Ali', 'assets/images/1.jpg'),
                    studentCard('Sara Youssef', 'assets/images/1.jpg'),
                    studentCard('Khalid Omar', 'assets/images/1.jpg'),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Horizontal List',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    studentCardHorizontal('Ahmed Ali', 'assets/images/1.jpg'),
                    studentCardHorizontal('Sara Youssef', 'assets/images/1.jpg'),
                    studentCardHorizontal('Khalid Omar', 'assets/images/1.jpg'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget studentCard(String name, String imagePath) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Image.asset(imagePath, width: 50, height: 50),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
          ),
        ),
        trailing: Icon(Icons.school),
      ),
    );
  }

  Widget studentCardHorizontal(String name, String imagePath) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        width: 150,
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(imagePath, width: 60, height: 60),
            SizedBox(height: 10),
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Poppins',
              ),
            ),
            Icon(Icons.person),
          ],
        ),
      ),
    );
  }
}
