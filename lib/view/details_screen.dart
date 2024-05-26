import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  int? value;
   DetailsScreen({super.key,this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(value.toString()),
    );
  }
}
