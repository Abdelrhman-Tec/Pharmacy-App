import 'dart:async';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/utils/app_text_style.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';

typedef SearchItemBuilder<T> = Widget Function(BuildContext context, T item);
typedef SearchItemMatcher<T> = bool Function(T item, String query);

class MySearchDelegate<T> extends SearchDelegate {
  final bool showSkeleton;
  final VoidCallback onClose;
  final List<T> items;
  final SearchItemMatcher<T> matcher;
  final SearchItemBuilder<T> itemBuilder;

  Timer? _debounce;

  MySearchDelegate({
    required this.showSkeleton,
    required this.onClose,
    required this.items,
    required this.matcher,
    required this.itemBuilder,
  });

  @override
  void close(BuildContext context, result) {
    onClose();
    super.close(context, result);
  }

  @override
  String get searchFieldLabel => 'ابحث عن دواء او منتج';

  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 1,
        iconTheme: IconThemeData(color: AppColors.primaryGreen),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: AppTextStyle.fontSize14WeightNormal.copyWith(
          color: AppColors.grey600,
        ),
        filled: true,
        fillColor: AppColors.grey200,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 12,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  void _onQueryChanged(String query, void Function(List<T>) onResult) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      if (query.trim().length >= 2) {
        final results = items
            .where((item) => matcher(item, query.trim()))
            .toList();
        onResult(results);
      } else {
        onResult([]);
      }
    });
  }

  Widget _buildSearchList() {
    return StatefulBuilder(
      builder: (context, setState) {
        List<T> results = [];

        _onQueryChanged(query, (res) {
          setState(() {
            results = res;
          });
        });

        if (results.isEmpty) {
          return ListView(
            padding: const EdgeInsets.symmetric(vertical: 10),
            children: List.generate(5, (index) {
              return ListTile(
                leading: Container(
                  width: 60,
                  height: 60,
                  color: AppColors.grey300,
                ),
                title: Container(
                  height: 16,
                  color: AppColors.grey300,
                  margin: const EdgeInsets.symmetric(vertical: 4),
                ),
                subtitle: Container(
                  height: 14,
                  color: AppColors.grey300,
                  margin: const EdgeInsets.symmetric(vertical: 2),
                ),
              );
            }),
          );
        }

        return ListView.builder(
          itemCount: results.length,
          itemBuilder: (context, index) {
            return itemBuilder(context, results[index]);
          },
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.trim().isEmpty) {
      return Center(
        child: Text(
          'اكتب ما تريد البحث عنه',
          style: TextStyle(fontSize: 18, color: AppColors.grey600),
        ),
      );
    }
    return _buildSearchList();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.trim().length < 2) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.search,
            size: 80,
            color: AppColors.primaryGreen.withValues(alpha: .60),
          ),
          const Gap(10),
          Text(
            'ابدأ بكتابة حرفين على الأقل للبحث',
            style: AppTextStyle.fontSize18WeightNormal.copyWith(
              color: AppColors.primaryGreen.withValues(alpha: .60),
            ),
          ),
          const Gap(20),
          Center(
            child: Container(
              width: 300.w,
              height: 60.h,
              decoration: BoxDecoration(
                color: AppColors.primaryGreen.withValues(alpha: .30),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppColors.primaryGreen.withValues(alpha: .10),
                ),
              ),
              child: Center(
                child: Text(
                  'مثال: باراسيتامول، فيتامين سي، كريم مرطب',
                  style: AppTextStyle.fontSize14WeightNormal,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      );
    }

    return _buildSearchList();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    if (query.isEmpty) return null;
    return [
      IconButton(icon: const Icon(Icons.clear), onPressed: () => query = ''),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back_ios_new_outlined),
      onPressed: () => close(context, null),
    );
  }
}
