import 'package:pharmacy_app/features/category/presentation/widgets/products_category_gridview.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(child: ProductsCategoryGridView()),
    );
  }
}
