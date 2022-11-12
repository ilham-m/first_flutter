import 'package:flutter/material.dart';
import 'package:gallery/gallery.dart';
import 'package:gallery/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'IGE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: (() {
                        Route route = MaterialPageRoute(builder: (context)=>const AboutPage());
                        Navigator.push(context, route);
                      }),
                      style : ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue.shade200),
                        //padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
                      ),
                      child: const Text('Profile')
                    ),
                ),
                const SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                     onPressed: (() {
                        Route route = MaterialPageRoute(builder: (context)=>const GalleryPage());
                        Navigator.push(context, route);
                      }),
                      style : ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blue.shade200),
                        //padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical: 10, horizontal: 20)),
                      ),
                      child: const Text('Gallery')
                    ),
                ),
            ],
          ),
        )
      ),
    );
  }
}
