import '../models/commety_model.dart';

class DummyCommety{
  List<CommetyModel> commeties = [];

  CommetyModel cm1 = CommetyModel(
      name: "Balaji Commety Group Of 10 Lakh",
      amount: "10,00,000",
      total_month: 10,
      left_month: 1);
  CommetyModel cm2 = CommetyModel(
      name: "Balaji Commety Group",
      amount: "5,00,000",
      total_month: 10,
      left_month: 3);
  CommetyModel cm3 = CommetyModel(
      name: "Balaji Commety",
      amount: "6,00,000",
      total_month: 10,
      left_month: 4);
  CommetyModel cm4 = CommetyModel(
      name: "Balaji Commety Group Of 7 Lakh",
      amount: "7,00,000",
      total_month: 10,
      left_month: 8);
  CommetyModel cm5 = CommetyModel(
      name: "lalaji Commety",
      amount: "10,00,000",
      total_month: 10,
      left_month: 3);
  CommetyModel cm6 = CommetyModel(
      name: "Simbhaji Commety Group",
      amount: "10,00,000",
      total_month: 10,
      left_month: 7);
  CommetyModel cm7 = CommetyModel(
      name: "Balaji Commety Group Of 4 Lakh",
      amount: "4,00,000",
      total_month: 10,
      left_month: 5);


  List<CommetyModel> getCommetyData(){
    commeties.add(cm1);
    commeties.add(cm2);
    commeties.add(cm4);
    commeties.add(cm3);
    commeties.add(cm5);
    commeties.add(cm6);
    commeties.add(cm7);
    return commeties;
  }

}