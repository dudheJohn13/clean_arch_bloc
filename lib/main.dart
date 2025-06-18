import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/di/injection.dart';
import 'package:flutter_clean_architecture/core/router/router.dart';
import 'package:flutter_clean_architecture/core/theme/AppTheme.dart';
import 'package:flutter_clean_architecture/core/utils/storage_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(ProviderScope(child : MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      themeMode: ThemeMode.system,
      routerConfig: router,
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    StorageUtil.write("token","daflasdjflkajldfjalkdfjlakjdf");
    StorageUtil.read("token");
    StorageUtil.clear();
    StorageUtil.remove("token");


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text('$_counter', style: Theme.of(context).textTheme.bodyMedium),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              onPressed: (){
              },
              child: Text("Press"),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[300],
                textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
              ),
              onPressed: (){
              },
              child: Text("Press"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
