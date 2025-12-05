import 'package:pharmacy_app/core/services/location_controller.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/home_appbar.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with AutomaticKeepAliveClientMixin {
  final LocationController _locationController = LocationController();

  @override
  void initState() {
    super.initState();
    _locationController.getLocation();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(180),
        child: ValueListenableBuilder<String>(
          valueListenable: _locationController.location,
          builder: (context, location, _) {
            return HomeAppBar(locationPlaceholder: location);
          },
        ),
      ),
      body: const HomeBody(),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
