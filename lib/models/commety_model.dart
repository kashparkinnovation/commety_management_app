import 'package:floor/floor.dart';

@Entity(tableName:"commeties")
class CommetyModel {
  @PrimaryKey(autoGenerate: true)
  int? id;
   String name;
   String amount;
   int total_month, left_month;
  CommetyModel({this.id,required this.name, required this.amount,required this.total_month,required this.left_month});
}