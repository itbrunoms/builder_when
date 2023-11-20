import 'package:builder_when/builder_when.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BuilderWhenPage());
}

class BuilderWhenPage extends StatelessWidget {
  const BuilderWhenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  bool condition = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: BuilderWhen(
        condition: condition,
        isTrue: (context) => const Center(
          child: Text('True'),
        ),
        isFalse: (context) => const Center(
          child: Text('False'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => condition = !condition),
        tooltip: 'Change',
        child: const Icon(Icons.add),
      ),
    );
  }
}
