import 'package:pharmacy_app/features/home/presentation/widgets/home_appbar.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: HomeAppBar(), body: HomeBody());
  }
}
