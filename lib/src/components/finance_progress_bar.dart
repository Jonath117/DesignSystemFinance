import 'package:flutter/material.dart';
import '../colors/finance_colors.dart';

class FinanceProgressBar extends StatelessWidget {
  final double current;
  final double target;
  final bool reverseColors; // if true, filling up = red (like expenses). if false, filling up = green (like savings)

  const FinanceProgressBar({
    super.key,
    required this.current,
    required this.target,
    this.reverseColors = false,
  });

  @override
  Widget build(BuildContext context) {
    double percentage = target > 0 ? (current / target).clamp(0.0, 1.0) : 0.0;
    
    Color progressColor;
    if (reverseColors) {
      // For budgets/expenses: low = green, high = red
      if (percentage < 0.5) {
        progressColor = FinanceColors.success;
      } else if (percentage < 0.8) {
        progressColor = FinanceColors.warning;
      } else {
        progressColor = FinanceColors.error;
      }
    } else {
      // For goals: high = green
      progressColor = FinanceColors.primary;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: LinearProgressIndicator(
            value: percentage,
            minHeight: 12,
            backgroundColor: Colors.grey.shade200,
            valueColor: AlwaysStoppedAnimation<Color>(progressColor),
          ),
        ),
        const SizedBox(height: 4),
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            '${(percentage * 100).toStringAsFixed(1)}%',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: progressColor,
            ),
          ),
        ),
      ],
    );
  }
}
