
import 'package:bloc_clean_coding/config/components/loading_widget.dart';
import 'package:flutter/material.dart';

import '../color/color.dart';


class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final bool isLoading;

  const RoundButton({
    super.key,
    required this.title,
    required this.onPress,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: !isLoading ? onPress : null,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 40,
        width: 200,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
            child:Padding(
              padding: const EdgeInsets.all(4.0),
              child: isLoading ? const LoadingWidget(
                color: Colors.white,
              ) :
                      Text(title ,
                        style: const TextStyle(color: AppColors.whiteColor),
                      ),
            )),
      )
    );
  }
}
