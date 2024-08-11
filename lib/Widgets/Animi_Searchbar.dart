// ignore_for_file: file_names, camel_case_types, non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

class searchbar extends StatelessWidget {
  const searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimSearchBar(
      width: 400.0,
      helpText: "Search",
      textController: TextEditingController(),
      onSuffixTap: (){},
       onSubmitted: (String ) {  },
    );
  }
}