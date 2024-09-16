import 'package:get/get.dart';

import '../modules/auth/bindings/auth_binding.dart';
import '../modules/auth/views/login_view.dart';
import '../modules/auth/views/register_view.dart';
import '../modules/bottom_nav_bar/bindings/bottom_nav_bar_binding.dart';
import '../modules/bottom_nav_bar/views/bottom_nav_bar_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/level/bindings/level_binding.dart';
import '../modules/level/views/level_view.dart';
import '../modules/link_post/bindings/link_post_binding.dart';
import '../modules/link_post/views/link_post_view.dart';
import '../modules/notice/bindings/notice_binding.dart';
import '../modules/notice/views/notice_view.dart';
import '../modules/post_live/bindings/post_live_binding.dart';
import '../modules/post_live/views/post_live_view.dart';
import '../modules/referral/bindings/referral_binding.dart';
import '../modules/referral/views/referral_view.dart';
import '../modules/settings/bindings/settings_binding.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/work/bindings/work_binding.dart';
import '../modules/work/views/work_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.POST_LIVE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAV_BAR,
      page: () => BottomNavBarView(),
      binding: BottomNavBarBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.LEVEL,
      page: () => const LevelView(),
      binding: LevelBinding(),
    ),
    GetPage(
      name: _Paths.NOTICE,
      page: () => const NoticeView(),
      binding: NoticeBinding(),
    ),
    GetPage(
      name: _Paths.REFERRAL,
      page: () => const ReferralView(),
      binding: ReferralBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: _Paths.WORK,
      page: () => WorkView(),
      binding: WorkBinding(),
    ),
    GetPage(
      name: _Paths.LINK_POST,
      page: () => LinkPostView(),
      binding: LinkPostBinding(),
    ),
    GetPage(
      name: _Paths.POST_LIVE,
      page: () => const PostLiveView(),
      binding: PostLiveBinding(),
    ),
  ];
}
