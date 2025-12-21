import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/product_list_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: SafeArea(
        child: Column(
          children: [
            const Gap(10),
            SectionTitle(title: S.current.categories).paddingSymmetric(h: 20),
            const Gap(10),
            CategoryListView(),
            const Gap(20),
            // BannersListView(),
            const Gap(15),
            SectionTitle(title: S.current.products).paddingSymmetric(h: 20),
            const Gap(4),
            ProductListView(),
          ],
        ),
      ),
    );
  }
}
