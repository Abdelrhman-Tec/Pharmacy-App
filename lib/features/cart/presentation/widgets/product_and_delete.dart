import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/features/cart/presentation/widgets/delete_button.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class ProductNameAndDelete extends StatelessWidget {
  final String name;
  final VoidCallback onDelete;

  const ProductNameAndDelete({
    super.key,
    required this.name,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DeleteButton(onDelete: onDelete),
        Expanded(
          child: Text(
            name,
            style: AppTextStyle.fontSize16WeightBold.copyWith(
              color: AppColors.grey900,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}

