import 'package:flutter/material.dart';
import '../colors/finance_colors.dart';
import '../typography/finance_text_styles.dart';

class FinanceButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isSecondary;

  const FinanceButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isLoading = false,
    this.isSecondary = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isSecondary ? Colors.grey.shade200 : FinanceColors.primary,
          foregroundColor: isSecondary ? FinanceColors.textPrimary : Colors.white,
          elevation: isSecondary ? 0 : 2,
        ),
        onPressed: isLoading ? null : onPressed,
        child: isLoading
            ? const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
              )
            : Text(
                text,
                style: FinanceTextStyles.body.copyWith(
                  color: isSecondary ? FinanceColors.textPrimary : Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }
}
