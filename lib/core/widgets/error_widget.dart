import 'package:flutter/material.dart';
import 'package:quotes/core/resources/quotes_colors.dart';

class ErrorWidget extends StatelessWidget {
  final VoidCallback? onPress;
  const ErrorWidget({Key? key, this.onPress,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Icon(
            Icons.warning_amber_rounded,
            color: QuotesColors.primary,
            size: 150,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
            'Something Went Wrong',
            style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: QuotesColors.black,
                ),
          ),
        ),
        Text(
          'Please Try Again',
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: QuotesColors.hintPrimary,
              ),
        ),
        Container(
          height: 55,
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: QuotesColors.primary,
                onPrimary: Theme.of(context).primaryColor,
                elevation: 500,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                  50,
                )),
              ),
              onPressed: () {
                if(onPress != null){
                  onPress!();
                }
              },
              child: Text('Reload Screen',style: Theme.of(context).textTheme.displayMedium?.copyWith(
                color: QuotesColors.white,
              ) ,)),
        ),
      ],
    );
  }
}
