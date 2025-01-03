import 'package:commety_management_app/dao.dart';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'dart:async';
import 'models/commety_model.dart';

part 'db.g.dart';

@Database(version: 1, entities: [CommetyModel])
abstract class AppDatabase extends FloorDatabase {
  CommetyDao get commetyDao;
}