import 'package:pharmacy_app/core/widgets/custom_app_bar.dart';
import 'package:pharmacy_app/features/category/presentation/widgets/category_body.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class CategoryScreen extends StatelessWidget {
  final String categoryName;
  const CategoryScreen({super.key, required this.categoryName,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: categoryName),
      body: CategoryBody(),
    );
  }
}
