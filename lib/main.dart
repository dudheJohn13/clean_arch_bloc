import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/core/di/injection.dart';
import 'package:flutter_clean_architecture/core/localdb/DBHelper.dart';
import 'package:flutter_clean_architecture/core/router/router.dart';
import 'package:flutter_clean_architecture/core/theme/AppTheme.dart';
import 'package:flutter_clean_architecture/core/utils/storage_util.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/user/domain/dao/notesDao.dart';
import 'features/user/domain/dao/userDao.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(ProviderScope(child : MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final db = DBHelper().db;

    final userDao = UserDao(db);
    final noteDao = NotesDao(db);


    userDao.insertUser();


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


    final dbHelper = DBHelper();

    Image.network('https://example.com/png');

    CachedNetworkImage(
      imageUrl: 'https://example.com/png',
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context,url,error) => Icon(Icons.error),
    );

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
              onPressed: () async {
                await dbHelper.insertNote({'title' :'First Note', 'content' : 'This is local data'});

                final notes = dbHelper.readNote();
                await dbHelper.updateNote(1, {'title' :'First Note', 'content' : 'This is local data'});

                await dbHelper.deleteNote(1);

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
