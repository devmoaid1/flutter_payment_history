class Payment {
  int amount;
  String type;
  String logo;
  DateTime paymentDate;
  String paymentName;
  String id;

  Payment(
      {this.amount,
      this.type,
      this.logo,
      this.paymentDate,
      this.paymentName,
      this.id});

  Payment.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    type = json['type'];
    logo = json['logo'];
    paymentDate = json['paymentDate'];
    paymentName = json['paymentName'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['amount'] = this.amount;
    data['type'] = this.type;
    data['logo'] = this.logo;
    data['paymentDate'] = this.paymentDate;
    data['paymentName'] = this.paymentName;
    data['id'] = this.id;
    return data;
  }
}
