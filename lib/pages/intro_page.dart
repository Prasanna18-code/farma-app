import 'package:app/pages/cart_page.dart';
import 'package:app/pages/home_page.dart';
import 'package:app/pages/sign_up.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 100),
          child: Text(
            'FARMA',
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Color(0xFF252634),
        iconTheme: IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        shadowColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 70, 70, 88),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.calendar_today),
              title: Text('About Us'),
            ),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('MyCart'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.login),
              title: Text('SignOut'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUp()),
                );
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 80.0, right: 80, bottom: 40, top: 60),
            child: Image.asset('lib/images/Fruits.png'),
          ),
          const Padding(
            padding: const EdgeInsets.all(0),
            child: Text(
              "We Deliver Fresh Fruits and Groceries",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            "Fresh Items every day",
            style: TextStyle(color: Colors.grey[800]),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(12.0),
              child: const Text(
                "Get started",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Spacer(),
          const Spacer(),
        ],
      ),
    );
  }
}
