import 'package:flutter/material.dart';
import 'package:learn_me_game/widget/constant.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: textInputDecoration.copyWith(
        hintText: 'Search for an item...',
        suffixIcon: Icon(
          Icons.search,
          color: black,
        ),
      ),
    );
  }
}
