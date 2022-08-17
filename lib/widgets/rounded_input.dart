import 'package:flutter/material.dart';

class RoundedInput extends StatelessWidget {
  final String hintText;
  final Function(String)? onSubmit;
  final TextEditingController? controller;

  const RoundedInput({
    Key? key,
    this.controller,
    required this.hintText,
    this.onSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: true,
      controller: controller,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
      onSubmitted: onSubmit,
    );
  }
}
