import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

List<Map<String, dynamic>> buildOnboardingData() {
  return [
    {
      'title': 'onboarding.onboarding_title_1'.tr(),
      'subtitle': 'onboarding.onboarding_subtitle_1'.tr(),
      'pageWidget': const FlutterLogo(size: 200),
    },
    {
      'title': 'onboarding.onboarding_title_2'.tr(),
      'subtitle': 'onboarding.onboarding_subtitle_2'.tr(),
      'pageWidget': const FlutterLogo(size: 200),
    },
    {
      'title': 'onboarding.onboarding_title_3'.tr(),
      'subtitle': 'onboarding.onboarding_subtitle_3'.tr(),
      'pageWidget': const FlutterLogo(size: 200),
    },
  ];
}
