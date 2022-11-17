class Bill {
  late dynamic billNumber;
  late dynamic customerName;
  late dynamic date;
  late dynamic itemName;
  late int quantity;
  late double price;
  late double discount;
  late double total;

  Bill(
      {required this.billNumber,
      required this.customerName,
      required this.date,
      required this.itemName,
      required this.quantity,
      required this.price,
      required this.discount,
      required this.total});
}
