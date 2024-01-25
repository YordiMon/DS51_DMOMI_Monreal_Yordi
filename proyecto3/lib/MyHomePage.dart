import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void _check() {
    setState(() {

    });
  }

  void _verMas() {
    setState(() {

    });
  }

  void _links() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.black,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(20),
              child: CircleAvatar(
                backgroundImage: AssetImage('logo.png'),
                radius: 70,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    'Yordi Monreal',
                    style: Theme.of(context).textTheme.headlineMedium,
                ),
                ),
              ]
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
                Container(
                  margin: const EdgeInsets.only(right: 30, top: 30, bottom: 60),
                  
                  child: const Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('19'),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text('Edad'),
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 30, bottom: 60),
                  child: const Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('24/02/2024'),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text('FdN'),
                        ],
                      ),
                    ],
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(left: 30, top: 30, bottom: 60),
                  child: const Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('MEX'),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text('Nac'),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _verMas,
                  child: const Text('Ver +'),
                ),
                const SizedBox(width: 15),
                ElevatedButton(
                  onPressed: _links,
                  child: const Text('Links'),
                ),
              ],
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _check,
        tooltip: 'Check',
        child: const Icon(Icons.check),
      ),
    );
  }
}