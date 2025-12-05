import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class ProfileInfoRow extends StatelessWidget {
  final String text;

  const ProfileInfoRow({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          text,
          style: AppTextStyle.fontSize13WeightNormal.copyWith(
            color: AppColors.grey600,
          ),
          textAlign: TextAlign.right,
        ),
      ],
    );
  }
}
