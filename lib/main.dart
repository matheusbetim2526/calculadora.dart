// ignore_for_file: unnecessary_const, dead_code, unused_label, empty_statements

import 'package:flutter/material.dart';
import 'calculadora.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Layout',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 255, 229, 0)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculadora'),
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
        
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded( 
              child: Container(),
         ),
          Expanded(
            flex: 8,
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded( 
              child: Container(
              //  alignment: Alignment.center,
              //  color:  const Color.fromARGB(255, 0, 89, 162),
              //  child: const Text('Primeira coluna')
            ),
         ),
         Expanded(
          flex: 2,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius:BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.black,
                  width: 2,
                  ),

                boxShadow: const[
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 10,
                    offset: Offset(10, 10)
                  )
                ]
                ),
                child: Calculadora()
            ),
         ),
         Expanded( 
              child: Container(
               // alignment: Alignment.center,
               // color:  const Color.fromARGB(255, 0, 89, 162),
               // child: const Text('Teceira Coluna')
            ),
         ),
        ],
       ),
      ),
           Expanded(
            flex: 2,
              child: Container(
                //alignment: Alignment.center,
               // color: const Color.fromARGB(255, 6, 174, 32),
               // child: const Text('Layout Inferior')
            ),
         ),
       ],
     ),
   ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), 
    );
  }
}