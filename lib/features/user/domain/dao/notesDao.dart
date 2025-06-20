

import 'package:flutter_clean_architecture/features/user/data/models/notes_model.dart';
import 'package:flutter_clean_architecture/features/user/data/models/user_model.dart';
import 'package:sqflite/sqflite.dart';

class NotesDao {
  final Database db;

  NotesDao(this.db);

  Future<int> insertNote(NotesModel notesModel) async {
    return await db.insert('notes', notesModel.toJson());
  }

  Future<List<NotesModel>> getNotes() async {
    final result = db.query('notes');
    return result.map((e) => NotesModel.fromJson(e));
  }

  Future<List<NotesModel>> getNotesByUser(int userId) async {
    final result = await db.query('notes', where: 'userId = ?' , whereArgs: [userId]);
    return result.map((e) => NotesModel.fromJson(e))
  }


  Future<List<Map<String, dynamic>>> getJoinedNotes() async {
    final result = await db.rawQuery(''' 
    SELECT notes.*, users.name FROM notes JOIN users ON user.id = notes.userId
    
 
    ''');
    return result;
    // return result.map((e) => NotesModel.fromJson(e))
  }
}