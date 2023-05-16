class ContactsModel {
  String? id;
  String? customerName;
  String? phoneNumber;
  String? company;

  ContactsModel(
    this.id,
    this.customerName,
    this.phoneNumber,
    this.company,
  );

  ContactsModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    customerName = json["customer_name"];
    phoneNumber = json["phone_number"];
    company = json["company"];
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "customer_name": customerName,
      "phone_number": phoneNumber,
      "company": company,
    };
  }
}
