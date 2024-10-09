import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoadingWidget extends StatelessWidget {
  final double size;
  final Color color;
  const LoadingWidget({super.key,this.size=36.0,this.color= Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: size,
        height: size,
        child: Platform.isIOS ? CupertinoActivityIndicator(
          color: color,
        ) : CircularProgressIndicator(
          color: color,
          strokeWidth: 2.0,
        ),
      ),
    );
  }
}
