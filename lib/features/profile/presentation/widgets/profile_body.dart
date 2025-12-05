import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharmacy_app/core/utils/app_colors.dart';
import 'package:pharmacy_app/core/widgets/custom_button.dart';
import 'package:pharmacy_app/features/home/presentation/widgets/index.dart';
import 'package:pharmacy_app/features/profile/presentation/widgets/profile_header.dart';
import 'package:pharmacy_app/features/profile/presentation/widgets/profile_menu_item.dart';
import 'package:pharmacy_app/features/profile/presentation/widgets/profile_menu_section.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProfileHeader(
            name: 'عبدالرحمن ندا',
            email: 'abdelrhman@example.com',
            phone: '+20 01033797673',
            imageUrl: 'assets/images/1.jpg',
          ),
          Gap(20),
          ProfileMenuSection(
            title: 'الحساب',
            items: [
              ProfileMenuItem(
                icon: Icons.person_outline,
                title: 'معلوماتي الشخصية',
                onTap: () {},
              ),
              ProfileMenuItem(
                icon: Icons.location_on_outlined,
                title: 'عناويني',
                onTap: () {},
              ),
              ProfileMenuItem(
                icon: Icons.notifications_outlined,
                title: 'الإشعارات',
                onTap: () {},
              ),
              ProfileMenuItem(
                icon: Icons.lock_outline,
                title: 'الأمان والخصوصية',
                onTap: () {},
              ),
            ],
          ),
          Gap(20),
          ProfileMenuSection(
            title: 'الطلبات',
            items: [
              ProfileMenuItem(
                icon: Icons.shopping_bag_outlined,
                title: 'طلباتي',
                onTap: () {},
              ),
              ProfileMenuItem(
                icon: Icons.history_outlined,
                title: 'سجل المشتريات',
                onTap: () {},
              ),
              ProfileMenuItem(
                icon: Icons.favorite_outline,
                title: 'المفضلة',
                onTap: () {},
              ),
            ],
          ),
          Gap(20),
          ProfileMenuSection(
            title: 'المساعدة والدعم',
            items: [
              ProfileMenuItem(
                icon: Icons.headset_mic_outlined,
                title: 'الدعم الفني',
                onTap: () {},
              ),
              ProfileMenuItem(
                icon: Icons.help_outline,
                title: 'مركز المساعدة',
                onTap: () {},
              ),
              ProfileMenuItem(
                icon: Icons.info_outline,
                title: 'عن التطبيق',
                onTap: () {},
              ),
            ],
          ),
          Gap(30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomButton(
              text: 'تسجيل الخروج',
              backgroundColor: AppColors.error,
              textColor: AppColors.white,
              onPressed: () {},
            ),
          ),
          Gap(20),
        ],
      ).paddingSymmetric(h: 20, v: 20),
    );
  }
}
