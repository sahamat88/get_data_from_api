import 'dart:convert';

class ProductModel {
  final int id;
  final dynamic type;
  final dynamic parentCode;
  final String name;
  final String code;
  final String price;
  final String costPrice;
  final String unitName;
  final String categoryName;
  final String brandName;
  final String modelName;
  final String variantName;
  final String sizeName;
  final String colorName;
  final String oldPrice;
  final String imagePath;
  final String productBarcode;
  final String description;
  final List<dynamic> childList;
  final List<dynamic> batchSerial;
  final List<dynamic> warehouseList;
  final String currentStock;
  final String createDate;
  final String updateDate;

  ProductModel({
    required this.id,
    required this.type,
    required this.parentCode,
    required this.name,
    required this.code,
    required this.price,
    required this.costPrice,
    required this.unitName,
    required this.categoryName,
    required this.brandName,
    required this.modelName,
    required this.variantName,
    required this.sizeName,
    required this.colorName,
    required this.oldPrice,
    required this.imagePath,
    required this.productBarcode,
    required this.description,
    required this.childList,
    required this.batchSerial,
    required this.warehouseList,
    required this.currentStock,
    required this.createDate,
    required this.updateDate,
  });

  factory ProductModel.fromJson(String str) =>
      ProductModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProductModel.fromMap(Map<String, dynamic> json) => ProductModel(
        id: json["Id"],
        type: json["Type"],
        parentCode: json["ParentCode"],
        name: json["Name"] ?? '',
        code: json["Code"] ?? '',
        price: json["Price"] is double || json["Price"] is int
            ? "${json["Price"]}"
            : json["Price"] ?? '',
        costPrice: json["CostPrice"] is double || json["CostPrice"] is int
            ? "${json["CostPrice"]}"
            : json["CostPrice"] ?? '',
        unitName: json["UnitName"] ?? '',
        categoryName: json["CategoryName"] ?? '',
        brandName: json["BrandName"] ?? '',
        modelName: json["ModelName"] ?? '',
        variantName: json["VariantName"] ?? '',
        sizeName: json["SizeName"] ?? '',
        colorName: json["ColorName"] ?? '',
        oldPrice: json["OldPrice"] is double || json["OldPrice"] is int
            ? "${json["OldPrice"]}"
            : json["OldPrice"] ?? '',
        imagePath: json["ImagePath"] ?? '',
        productBarcode: json["ProductBarcode"] ?? '',
        description: json["Description"] ?? '',
        childList: json["ChildList"] == []
            ? []
            : List<dynamic>.from(json["ChildList"].map((x) => x)),
        batchSerial: json["BatchSerial"] == []
            ? []
            : List<dynamic>.from(json["BatchSerial"].map((x) => x)),
        warehouseList: json["WarehouseList"] == []
            ? []
            : List<dynamic>.from(json["WarehouseList"].map((x) => x)),
        currentStock:
            json["CurrentStock"] is double || json["CurrentStock"] is int
                ? "${json["CurrentStock"]}"
                : json["CurrentStock"] ?? '',
        createDate: json["CreateDate"] ?? '',
        updateDate: json["UpdateDate"] ?? '',
      );

  Map<String, dynamic> toMap() => {
        "Id": id,
        "Type": type,
        "ParentCode": parentCode,
        "Name": name,
        "Code": code,
        "Price": price,
        "CostPrice": costPrice,
        "UnitName": unitName,
        "CategoryName": categoryName,
        "BrandName": brandName,
        "ModelName": modelName,
        "VariantName": variantName,
        "SizeName": sizeName,
        "ColorName": colorName,
        "OldPrice": oldPrice,
        "ImagePath": imagePath,
        "ProductBarcode": productBarcode,
        "Description": description,
        "ChildList": List<dynamic>.from(childList.map((x) => x)),
        "BatchSerial": List<dynamic>.from(batchSerial.map((x) => x)),
        "WarehouseList": List<dynamic>.from(warehouseList.map((x) => x)),
        "CurrentStock": currentStock,
        "CreateDate": createDate,
        "UpdateDate": updateDate,
      };
}
