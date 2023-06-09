import 'dart:convert';
import '/models/Products.dart';
import 'package:http/http.dart' as http;

// Fetch our Products from API
Future<List> fetchProducts() async {
  const String apiUrl =
      "https://6496cace83d4c69925a31ba1.mockapi.io/API/v1/products";

  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    List products = (json.decode(response.body) as List)
        .map((data) => Product.fromJson(data))
        .toList();
    // Return list of products
    return products;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load');
  }
}
