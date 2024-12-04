import '../models/pending_payments.dart';

class DummyPayments{
  List<PendingPayments> pending_payments = [];
  List<PendingPayments> getPendingPayments(){

    pending_payments.add(PendingPayments(
        name: "Aryan Sharma", pending_amount: "37,500", pending_payout: "0"));
    pending_payments.add(PendingPayments(
        name: "Mayank Sharma",
        pending_amount: "1,03,400",
        pending_payout: "0"));
    pending_payments.add(PendingPayments(
        name: "Shivam Sharma",
        pending_amount: "0",
        pending_payout: "3,00,000"));
    pending_payments.add(PendingPayments(
        name: "Hritik Sharma", pending_amount: "38,250", pending_payout: "0"));
    pending_payments.add(PendingPayments(
        name: "Dev Saxena", pending_amount: "53,280", pending_payout: "0"));
    pending_payments.add(PendingPayments(
        name: "Riyaj Ahmed", pending_amount: "0", pending_payout: "40,000"));
    pending_payments.add(PendingPayments(
        name: "Aryan Sharma", pending_amount: "37,500", pending_payout: "0"));
    pending_payments.add(PendingPayments(
        name: "Mayank Sharma",
        pending_amount: "1,03,400",
        pending_payout: "0"));
    pending_payments.add(PendingPayments(
        name: "Shivam Sharma",
        pending_amount: "0",
        pending_payout: "3,00,000"));
    pending_payments.add(PendingPayments(
        name: "Hritik Sharma", pending_amount: "38,250", pending_payout: "0"));
    pending_payments.add(PendingPayments(
        name: "Dev Saxena", pending_amount: "53,280", pending_payout: "0"));
    pending_payments.add(PendingPayments(
        name: "Riyaj Ahmed", pending_amount: "0", pending_payout: "40,000"));
    pending_payments.add(PendingPayments(
        name: "Aryan Sharma", pending_amount: "37,500", pending_payout: "0"));
    pending_payments.add(PendingPayments(
        name: "Mayank Sharma",
        pending_amount: "1,03,400",
        pending_payout: "0"));
    pending_payments.add(PendingPayments(
        name: "Shivam Sharma",
        pending_amount: "0",
        pending_payout: "3,00,000"));
    pending_payments.add(PendingPayments(
        name: "Hritik Sharma", pending_amount: "38,250", pending_payout: "0"));
    pending_payments.add(PendingPayments(
        name: "Dev Saxena", pending_amount: "53,280", pending_payout: "0"));
    pending_payments.add(PendingPayments(
        name: "Riyaj Ahmed", pending_amount: "0", pending_payout: "40,000"));

    return pending_payments;
  }
}