import 'package:flutter/material.dart';

import '../../core/framework/colors.dart';

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Center(
        child: CircularProgressIndicator(
          color: secondary,
        ),
      ),
    );
  }
}