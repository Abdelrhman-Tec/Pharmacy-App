import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class ProductPrice extends StatelessWidget {
  final String price;

  const ProductPrice({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$price ر.س',
      style: AppTextStyle.fontSize16WeightBold.copyWith(
        color: AppColors.primaryGreen,
      ),
    );
  }
}
