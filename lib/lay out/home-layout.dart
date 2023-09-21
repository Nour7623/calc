import 'package:flutter/material.dart';

class homelayout extends StatelessWidget {
  const homelayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: Text(
         'Todo App'
       ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add)
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(
              Icons.menu,
            ),
              label: 'task',
            ),
            BottomNavigationBarItem(icon: Icon(
              Icons.check_circle_outline,
            ),
              label: 'done',
            ),
            BottomNavigationBarItem(icon: Icon(
              Icons.archive_outlined,
            ),
              label: 'archive',
            ),


          ]
      ),
    );
  }
}
