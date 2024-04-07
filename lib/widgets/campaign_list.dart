import 'package:flutter/material.dart';

class Campaign {
  final int? id, price, amount_required, amount;
  final String? name,
      description,
      type,
      start_date,
      is_end,
      beneficiaries,
      end_date,
      image;

  Campaign({
    this.amount,
    this.amount_required,
    this.type,
    this.beneficiaries,
    this.start_date,
    this.end_date,
    this.is_end,
    this.id,
    this.image,
    this.price,
    this.name,
    this.description,
  });
}

List<Campaign> campaigns = [
  Campaign(
    image: "assets/images/buy.jpg",
    id: 1,
    price: 39,
    name: "Apple",
    description: "blablabla",
    amount: 0,
    amount_required: 0,
    type: "",
    beneficiaries: "",
    start_date: "",
    end_date: "",
    is_end: "",
  ),
];
