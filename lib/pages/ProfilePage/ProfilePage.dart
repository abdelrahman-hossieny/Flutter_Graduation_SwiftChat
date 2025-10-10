// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:graduation_swiftchat/controllers/ProfileController.dart';
import 'package:graduation_swiftchat/widgets/PrimaryButton.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool isEditing = false.obs;
    ProfileController profileController = Get.put(ProfileController());
    TextEditingController nameController = TextEditingController(
      text: profileController.currentUser.value!.name,
    );
    TextEditingController emailController = TextEditingController(
      text: profileController.currentUser.value!.email,
    );
    TextEditingController phoneController = TextEditingController(
      text: profileController.currentUser.value!.phoneNumber,
    );
    TextEditingController aboutController = TextEditingController(
      text: profileController.currentUser.value!.about,
    );
    return Scaffold(
      appBar: AppBar(title: Text('Profile Page')),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              //height: 300,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: Theme.of(
                                context,
                              ).colorScheme.background,
                              radius: 80,
                              child: Icon(
                                Icons.image,
                                size: 80,
                                color: Theme.of(
                                  context,
                                ).colorScheme.onBackground,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Obx(
                          () => TextField(
                            controller: nameController,
                            enabled: isEditing.value,
                            decoration: InputDecoration(
                              filled: isEditing.value,
                              border: OutlineInputBorder(),
                              labelText: 'Name',
                              prefixIcon: Icon(Icons.person),
                            ),
                          ),
                        ),
                        Obx(
                          () => TextField(
                            controller: aboutController,
                            enabled: isEditing.value,
                            decoration: InputDecoration(
                              filled: isEditing.value,
                              border: OutlineInputBorder(),
                              labelText: 'About',
                              prefixIcon: Icon(Icons.info),
                            ),
                          ),
                        ),
                        Obx(
                          () => TextField(
                            controller: emailController,
                            enabled: false,
                            decoration: InputDecoration(
                              filled: isEditing.value,
                              border: OutlineInputBorder(),
                              labelText: 'Email',
                              prefixIcon: Icon(Icons.alternate_email_rounded),
                            ),
                          ),
                        ),
                        Obx(
                          () => TextField(
                            controller: phoneController,
                            enabled: isEditing.value,
                            decoration: InputDecoration(
                              filled: isEditing.value,
                              border: OutlineInputBorder(),
                              labelText: 'Phone',
                              prefixIcon: Icon(Icons.phone),
                            ),
                          ),
                        ),

                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Obx(
                              () => isEditing.value
                                  ? PrimaryButton(
                                      butName: 'Save',
                                      butIcon: Icons.save,
                                      onTap: () {
                                        isEditing.value = false;
                                      },
                                    )
                                  : PrimaryButton(
                                      butName: 'Edit',
                                      butIcon: Icons.edit,
                                      onTap: () {
                                        isEditing.value = true;
                                      },
                                    ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
