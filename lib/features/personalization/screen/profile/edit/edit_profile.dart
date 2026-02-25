import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/styles/padding.dart';
import '../../../../../common/widgets/appbar/custom_appbar.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';
import 'widgets/user_profile_details_row.dart';
import 'widgets/user_profile_logo_with_edit_icon.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> nameAndUsername = [
      {"title": AppTexts.name, 'value': StaticValues.testName},
      {"title": AppTexts.username, 'value': StaticValues.testUserName},
    ];

    final List<Map<String, dynamic>> profileSettings = [
      {
        "title": AppTexts.userId,
        'value': StaticValues.testUserId,
        'icon': Iconsax.copy,
      },
      {"title": AppTexts.userEmail, 'value': StaticValues.testUserEmail},
      {"title": AppTexts.phoneNumber, 'value': StaticValues.testPhoneNumber},
      {"title": AppTexts.gender, 'value': StaticValues.male},
    ];

    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          AppTexts.editProfile,
          style: Theme.of(context).textTheme.headlineMedium!,
        ),
        showLeadingIcon: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Column(
            children: [
              /// User profile logo with edit icon
              UserProfileLogoWithEditIcon(),

              /// Divider
              SizedBox(height: AppSizes.spaceBetweenSections),
              Divider(),
              SizedBox(height: AppSizes.spaceBetweenItems),

              SectionHeading(
                title: AppTexts.accountSettings,
                showAction: false,
              ),
              SizedBox(height: AppSizes.spaceBetweenItems),

              /// Name and username
              ...nameAndUsername.map(
                (e) => UserDetailsRow(title: e['title'], value: e['value']),
              ),

              /// Divider
              SizedBox(height: AppSizes.spaceBetweenSections),
              Divider(),
              SizedBox(height: AppSizes.spaceBetweenItems),

              /// Profile settings heading
              SectionHeading(
                title: AppTexts.profileSettings,
                showAction: false,
              ),
              SizedBox(height: AppSizes.spaceBetweenItems),

              ...profileSettings.map(
                (e) => UserDetailsRow(
                  title: e['title'],
                  value: e['value'],
                  icon: e['icon'] ?? Iconsax.arrow_right_3,
                ),
              ),

              /// Divider
              SizedBox(height: AppSizes.spaceBetweenSections),
              Divider(),
              SizedBox(height: AppSizes.spaceBetweenItems),

              TextButton(
                onPressed: () {},
                child: Text(
                  AppTexts.closeAccount,
                  style: Theme.of(context).textTheme.bodyMedium!.apply(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
