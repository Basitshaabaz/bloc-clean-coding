import 'package:bloc_clean_coding/utils/extensions/general_extensions.dart';
import 'package:flutter/material.dart';


class InternetExceptionWidget extends StatefulWidget {
  final VoidCallback onPress;

  const InternetExceptionWidget({super.key,required this.onPress});

  @override
  State<InternetExceptionWidget> createState() => _InterNetExceptionWidgetState();

}

class _InterNetExceptionWidgetState extends State<InternetExceptionWidget> {

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            children: [
              (context.mediaQueryHeight * 0.15).height,
              Icon(
                Icons.cloud_off,
                size: 50,
                color: Colors.red,
              ),
              Padding(padding: const EdgeInsets.only(top: 30),
                child: Center(
                  child: Text(
                      'We’re unable to show results.\nPlease check your data\nconnection.',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.displayMedium!.copyWith(fontSize: 20)),
                ),
              ),
              (context.mediaQueryHeight * 0.15).height,
              ElevatedButton(
                  onPressed: widget.onPress,
                  child: Center(
                    child: Text(
                      'RETRY',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),))
            ])
    );
  }

}
