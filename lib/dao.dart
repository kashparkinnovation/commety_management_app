import 'package:commety_management_app/models/commety_model.dart';
import 'package:floor/floor.dart';

@dao
abstract class CommetyDao {

  @Query('SELECT * FROM commeties')
  Future<List<CommetyModel>> findAllCommety();


  @insert
  Future<void> insertCommety(CommetyModel commety);

  @update
  Future<void> updateCommety(CommetyModel commety);

  @delete
  Future<void> deleteCom(CommetyModel commety);


  @Query("DELETE FROM commeties WHERE id = :cmid")
  Future<void> deleteCommety(int cmid);

}