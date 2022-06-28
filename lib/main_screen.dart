import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int value = 0;

  void add() {
    setState((){
      value ++;
    });
  }

  void subtract() {
    setState((){
      value --;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      /// appbar
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
        centerTitle: true,
        title: const Text('Counter App',
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
          ),
        ),
      ),

      /// body
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Value $value',
              style: const TextStyle(
                fontSize: 60.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 40.0),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: (){
                    add();
                  },
                  backgroundColor: Colors.black,
                  child: const Icon(Icons.add, color: Colors.white,),
                ),
                SizedBox(width: 80.0),
                FloatingActionButton(
                  onPressed: (){
                    subtract();
                  },
                  backgroundColor: Colors.black,
                  child: const Icon(Icons.remove, color: Colors.white,),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
