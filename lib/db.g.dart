// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// FloorGenerator
// **************************************************************************

abstract class $AppDatabaseBuilderContract {
  /// Adds migrations to the builder.
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations);

  /// Adds a database [Callback] to the builder.
  $AppDatabaseBuilderContract addCallback(Callback callback);

  /// Creates the database and initializes it.
  Future<AppDatabase> build();
}

// ignore: avoid_classes_with_only_static_members
class $FloorAppDatabase {
  /// Creates a database builder for a persistent database.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract databaseBuilder(String name) =>
      _$AppDatabaseBuilder(name);

  /// Creates a database builder for an in memory database.
  /// Information stored in an in memory database disappears when the process is killed.
  /// Once a database is built, you should keep a reference to it and re-use it.
  static $AppDatabaseBuilderContract inMemoryDatabaseBuilder() =>
      _$AppDatabaseBuilder(null);
}

class _$AppDatabaseBuilder implements $AppDatabaseBuilderContract {
  _$AppDatabaseBuilder(this.name);

  final String? name;

  final List<Migration> _migrations = [];

  Callback? _callback;

  @override
  $AppDatabaseBuilderContract addMigrations(List<Migration> migrations) {
    _migrations.addAll(migrations);
    return this;
  }

  @override
  $AppDatabaseBuilderContract addCallback(Callback callback) {
    _callback = callback;
    return this;
  }

  @override
  Future<AppDatabase> build() async {
    final path = name != null
        ? await sqfliteDatabaseFactory.getDatabasePath(name!)
        : ':memory:';
    final database = _$AppDatabase();
    database.database = await database.open(
      path,
      _migrations,
      _callback,
    );
    return database;
  }
}

class _$AppDatabase extends AppDatabase {
  _$AppDatabase([StreamController<String>? listener]) {
    changeListener = listener ?? StreamController<String>.broadcast();
  }

  CommetyDao? _commetyDaoInstance;

  Future<sqflite.Database> open(
    String path,
    List<Migration> migrations, [
    Callback? callback,
  ]) async {
    final databaseOptions = sqflite.OpenDatabaseOptions(
      version: 1,
      onConfigure: (database) async {
        await database.execute('PRAGMA foreign_keys = ON');
        await callback?.onConfigure?.call(database);
      },
      onOpen: (database) async {
        await callback?.onOpen?.call(database);
      },
      onUpgrade: (database, startVersion, endVersion) async {
        await MigrationAdapter.runMigrations(
            database, startVersion, endVersion, migrations);

        await callback?.onUpgrade?.call(database, startVersion, endVersion);
      },
      onCreate: (database, version) async {
        await database.execute(
            'CREATE TABLE IF NOT EXISTS `commeties` (`id` INTEGER PRIMARY KEY AUTOINCREMENT, `name` TEXT NOT NULL, `amount` TEXT NOT NULL, `total_month` INTEGER NOT NULL, `left_month` INTEGER NOT NULL)');

        await callback?.onCreate?.call(database, version);
      },
    );
    return sqfliteDatabaseFactory.openDatabase(path, options: databaseOptions);
  }

  @override
  CommetyDao get commetyDao {
    return _commetyDaoInstance ??= _$CommetyDao(database, changeListener);
  }
}

class _$CommetyDao extends CommetyDao {
  _$CommetyDao(
    this.database,
    this.changeListener,
  )   : _queryAdapter = QueryAdapter(database),
        _commetyModelInsertionAdapter = InsertionAdapter(
            database,
            'commeties',
            (CommetyModel item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'amount': item.amount,
                  'total_month': item.total_month,
                  'left_month': item.left_month
                }),
        _commetyModelUpdateAdapter = UpdateAdapter(
            database,
            'commeties',
            ['id'],
            (CommetyModel item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'amount': item.amount,
                  'total_month': item.total_month,
                  'left_month': item.left_month
                }),
        _commetyModelDeletionAdapter = DeletionAdapter(
            database,
            'commeties',
            ['id'],
            (CommetyModel item) => <String, Object?>{
                  'id': item.id,
                  'name': item.name,
                  'amount': item.amount,
                  'total_month': item.total_month,
                  'left_month': item.left_month
                });

  final sqflite.DatabaseExecutor database;

  final StreamController<String> changeListener;

  final QueryAdapter _queryAdapter;

  final InsertionAdapter<CommetyModel> _commetyModelInsertionAdapter;

  final UpdateAdapter<CommetyModel> _commetyModelUpdateAdapter;

  final DeletionAdapter<CommetyModel> _commetyModelDeletionAdapter;

  @override
  Future<List<CommetyModel>> findAllCommety() async {
    return _queryAdapter.queryList('SELECT * FROM commeties',
        mapper: (Map<String, Object?> row) => CommetyModel(
            id: row['id'] as int?,
            name: row['name'] as String,
            amount: row['amount'] as String,
            total_month: row['total_month'] as int,
            left_month: row['left_month'] as int));
  }

  @override
  Future<void> deleteCommety(int cmid) async {
    await _queryAdapter.queryNoReturn('DELETE FROM commeties WHERE id = ?1',
        arguments: [cmid]);
  }

  @override
  Future<void> insertCommety(CommetyModel commety) async {
    await _commetyModelInsertionAdapter.insert(
        commety, OnConflictStrategy.abort);
  }

  @override
  Future<void> updateCommety(CommetyModel commety) async {
    await _commetyModelUpdateAdapter.update(commety, OnConflictStrategy.abort);
  }

  @override
  Future<void> deleteCom(CommetyModel commety) async {
    await _commetyModelDeletionAdapter.delete(commety);
  }
}
