

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
static Database? _db;

Future<Database> get db async{
  if(_db != null) return _db!;
  _db = await initDB();
  return _db!;
}


Future<Database> initDB() async {
  String path = join(await getDatabasesPath(), 'demo.db');

  return await openDatabase(path,

  version: 1,
    onCreate: (db, version){
    db.execute('''
    CREATE TABLE users(id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT
    )''');


    db.execute('''
    CREATE TABLE notes(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    userId INTEGER,
    title TEXT,
    content TEXT,
    FOREIGN KEY (userId) REFERENCES users (id) on DELETE CASCADE
    )''');
    }
  );

}

// insert
Future<int> insertNote(Map<String, dynamic> data) async{
  final dbClient = await db;
  return dbClient.insert('notes', data);
}

// Read all
Future<List<Map<String, dynamic>>> readNote() async{
  final dbClient = await db;
  return dbClient.query('notes');
}

// update
 Future<int> updateNote(int id, Map<String, dynamic> data) async{
    final dbClient = await db;
    return dbClient.update('notes', data, where: 'id = ?', whereArgs: [id]);
  }

  Future<int> deleteNote(int id) async{
    final dbClient = await db;
    return dbClient.delete('notes', where: 'id = ?', whereArgs: [id]);
  }


}