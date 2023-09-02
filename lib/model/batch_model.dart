import 'dart:convert';

class BatchList {
  final String batchSerialNo;
  final int batchQty;
  final int amount;
  final String purchaseDate;
  final String supplierName;

  BatchList({
    required this.batchSerialNo,
    required this.batchQty,
    required this.amount,
    required this.purchaseDate,
    required this.supplierName,
  });

  factory BatchList.fromJson(String str) => BatchList.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory BatchList.fromMap(Map<String, dynamic> json) => BatchList(
        batchSerialNo: json["BatchSerialNo"],
        batchQty: json["BatchQty"],
        amount: json["Amount"],
        purchaseDate: json["PurchaseDate"],
        supplierName: json["SupplierName"],
      );

  Map<String, dynamic> toMap() => {
        "BatchSerialNo": batchSerialNo,
        "BatchQty": batchQty,
        "Amount": amount,
        "PurchaseDate": purchaseDate,
        "SupplierName": supplierName,
      };
}
