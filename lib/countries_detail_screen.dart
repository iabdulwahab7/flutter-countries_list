import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'countries.dart';

class CountryDetailScreen extends StatelessWidget {
  final CountriesModel countryDetail;
  const CountryDetailScreen({super.key, required this.countryDetail});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.backspace)),
          ],
          title: const Text('Country Details'),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 200,
                child: SvgPicture.network(countryDetail.flag.toString()),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                countryDetail.country.toString(),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ]),
      ),
    );
  }
}
