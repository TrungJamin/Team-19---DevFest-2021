import "package:flutter/material.dart";

@immutable
class Constants {
  const Constants._({required this.endPoint, required this.apiKey});

  factory Constants.of() {
    return Constants.prd();
  }

  factory Constants.prd() {
    return const Constants._(
      endPoint: "https://api.pexels.com",
      apiKey: "563492ad6f91700001000001a13e7afe34ba401baff7897cf290122b",
    );
  }

  // Singleton
  static late final Constants instance = Constants.of();

  final String endPoint;
  final String apiKey;
}
