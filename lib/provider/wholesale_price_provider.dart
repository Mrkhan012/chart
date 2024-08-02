// data_provider.dart
import 'package:chart/model/wholesale_price_index.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// URL for the API endpoint
const String apiUrl =
    'https://api.data.gov.in/resource/07b59cc2-3489-4146-9700-c3acc817cf54?api-key=579b464db66ec23bdd000001cdd3946e44ce4aad7209ff7b23ac571b&format=json';

final dataProvider = FutureProvider<WholesalePriceIndex>((ref) async {
  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    final jsonData = jsonDecode(response.body);
    return WholesalePriceIndex.fromJson(jsonData);
  } else {
    throw Exception('Failed to load data');
  }
});
