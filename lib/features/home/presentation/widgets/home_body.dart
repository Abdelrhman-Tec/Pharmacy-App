import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';
import 'bannersListView.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            const HomeTopBar().paddingSymmetric(h: 20, v: 20),
            const Gap(10),
            HomeSearchBar().paddingSymmetric(h: 20),
            const Gap(30),
            SectionTitle(title: S.current.categories).paddingSymmetric(h: 20),
            const Gap(15),
            CategoryListView(categories: CategoryModel.categories),
            const Gap(15),
            BannersListView(),
          ],
        ),
      ),
    );
  }
}

