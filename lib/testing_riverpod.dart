import 'package:chart/model/wholesale_price_index.dart';
import 'package:chart/provider/wholesale_price_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('dataProvider fetches data successfully', () async {
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final provider = container.read(dataProvider);

    provider.when(
      data: (data) {
        expect(data, isNotNull); // Check if data is not null
        expect(data is Petrol, true); // Check if data is of type Petrol
      },
      loading: () {},
      error: (error, stackTrace) {
        fail('Provider threw an error: $error');
      },
    );
  });
}
