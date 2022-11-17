import '../data/bill_model.dart';

List<Bill> getBills() {
  var cost = 200.1;
  var tot = cost - (cost * (15.5 / 100));
  var b = Bill(
      billNumber: "123",
      customerName: "OKok",
      date: "10/11/2022",
      discount: 15.5,
      itemName: "Shoes",
      price: cost,
      quantity: 3,
      total: tot);

  return [b];
}
