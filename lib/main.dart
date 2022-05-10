import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'lab 6',
      // Start the app with the "/" named route. In this case, the app starts
      // on the FirstScreen widget.
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const FirstScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const SecondScreen(),
      },
    ),
  );
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Value return'),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the `FirstScreen` widget
          onPressed: () {
            // Navigate to the second screen using a named route.
            Navigator.pushNamed(context, '/second');
          },
          child: const Text('Proceed with the selection...'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose any option'),
      ),
      body: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
       children: [
        // SizedBox(height: 300,),
         ElevatedButton(
        // Within the SecondScreen widget
       onPressed: () {
         ScaffoldMessenger.of(context).showSnackBar(
           const SnackBar(
             content: Text('Yes!'),
           ),
         );
           Navigator.pop(context);
                     },
         child: const Text('Yes!'),
         ),
         SizedBox(height: 5,),
      ElevatedButton(
    // Within the SecondScreen widget
    onPressed: () {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No.'),
        ),
      );
    // Navigate back to the first screen by popping the current route
    // off the stack.
       Navigator.pop(context);
        },
          child: const Text('No.'),
        ),]
      ),
      ));
  }
}