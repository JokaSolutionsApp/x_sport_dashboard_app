import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:x_sport_dashboard_app/core/utils/constants/styles.dart';

class PersonalProfileScreen extends StatelessWidget {
  const PersonalProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            context.tr('Personal profile'),
            style: TextStyles.primaryTextRegular18,
          ),
          automaticallyImplyLeading: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(),
                  Column(
                    children: [
                      Row(
                        children: [
                          const Text('data'),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit,
                            ),
                          ),
                        ],
                      ),
                      const Text('data'),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
