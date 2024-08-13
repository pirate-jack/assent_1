import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  static const DB_NAME = 'Tops Tec.';
  static const DB_VERSION = 1;

  static const TABLE_WORD = 'WORD_table';
  static const TABLE_MEANING = 'MEANING_table';

  static const COL_WORD_ID = 'w_id';
  static const COL_WORD = 'word';
  static final COL_CREATE_AT = 'createAt';

  static const COL_MEANING_ID = 'm_id';
  static const COL_MEANING = 'meaning';
  static const COL_COM_ID = 'compare_id';

  DbHelper._internal();

  static DbHelper _instance = DbHelper._internal();

  factory DbHelper() {
    return _instance;
  }

  static Database? _database;

  Future<Database?> getDatabase() async {
    _database = await createDatabase();
    return _database;
  }

  createDatabase() async {
    var dbpath = await getDatabasesPath();
    var dbName = 'Tops Tec.';
    var path = join(dbpath, dbName);

    print('path : $path');

    return openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('CREATE TABLE $TABLE_WORD('
            '$COL_WORD_ID INTEGER PRIMARY KEY AUTOINCREMENT,'
            '$COL_WORD TEXT NOT NULL,'
            '$COL_CREATE_AT INTEGER'
            ')');
        await db.execute('CREATE TABLE $TABLE_MEANING('
            '$COL_MEANING_ID INTEGER PRIMARY KEY AUTOINCREMENT,'
            '$COL_MEANING TEXT,'
            '$COL_COM_ID INTEGER,'
            'FOREIGN KEY ($COL_COM_ID) REFERENCES $TABLE_WORD($COL_WORD_ID) ON DELETE CASCADE'
            ')');
      },
    );
  }
}
