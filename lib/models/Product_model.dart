import 'package:flutter/material.dart';

class ProductModel {
  final int id;
  final String title;
  final double price;
  final String description;
  final String image;
  final String category;
  final ratingModel rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.rating,
  required this.category ,

  });
  factory ProductModel.fromjason(jasonData) {
    return ProductModel(
      id: jasonData['id'],
      title: jasonData['title'],
      price: jasonData['price'],
      description: jasonData['description'],
      image: jasonData['image'],
      category: jasonData['category'],
      rating: ratingModel.fromjason(jasonData['rating']),
    );
  }
}

class ratingModel {
  final double rate;
  final int count;
  ratingModel({required this.rate, required this.count});

  factory ratingModel.fromjason(jasonData) {
    return ratingModel(
      rate: jasonData['rate'],
      count: jasonData['count'],
    );
  }
}
