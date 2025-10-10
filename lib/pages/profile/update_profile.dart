import 'package:flutter/material.dart';
import 'package:graduation_swiftchat/widgets/PrimaryButton.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      appBar: AppBar(
        title: const Text('Update Profile'),
        elevation: 0,
        backgroundColor: colorScheme.primaryContainer,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Profile Image (بنفس شكل الديزاين الرايق)
            Center(
              child: Container(
                height: 140,
                width: 140,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorScheme.primaryContainer,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.person,
                  size: 70,
                  color: colorScheme.onPrimaryContainer.withOpacity(0.8),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Card-style container for fields
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Personal Info title (متمركزة)
                  Center(
                    child: Text(
                      "Personal Info",
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: colorScheme.onPrimaryContainer,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),

                  // Name Label + Field
                  Text(
                    "Name",
                    style: textTheme.labelLarge
                        ?.copyWith(color: colorScheme.onPrimaryContainer),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your name",
                      prefixIcon:
                      const Icon(Icons.person_outline, size: 20),
                      filled: true,
                      fillColor: colorScheme.background.withOpacity(0.8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Email Label + Field
                  Text(
                    "Email",
                    style: textTheme.labelLarge
                        ?.copyWith(color: colorScheme.onPrimaryContainer),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      prefixIcon:
                      const Icon(Icons.alternate_email_rounded, size: 20),
                      filled: true,
                      fillColor: colorScheme.background.withOpacity(0.8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Phone Label + Field
                  Text(
                    "Phone Number",
                    style: textTheme.labelLarge
                        ?.copyWith(color: colorScheme.onPrimaryContainer),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: "Enter your phone number",
                      prefixIcon:
                      const Icon(Icons.phone_outlined, size: 20),
                      filled: true,
                      fillColor: colorScheme.background.withOpacity(0.8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),

                  // Save Button (متمركز وأنيق)
                  Center(
                    child: PrimaryButton(
                      butName: "Save Changes",
                      butIcon: Icons.save_alt_rounded,
                      onTap: () {},
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


//-----------------u code-----------------
/*
import 'package:flutter/material.dart';
import 'package:graduation_swiftchat/widgets/PrimaryButton.dart';

class UpdateProfile extends StatelessWidget {
  const UpdateProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Update Profile'),
        centerTitle: true,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Image
              Center(
                child: Container(
                  height: 110,
                  width: 110,
                  decoration: BoxDecoration(
                    color: colorScheme.surface.withOpacity(0.6),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.person,
                    size: 55,
                    color: colorScheme.onBackground.withOpacity(0.8),
                  ),
                ),
              ),
              const SizedBox(height: 25),

              // Personal Info Label (centered)
              Center(
                child: Text(
                  "Personal Info",
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5,
                  ),
                ),
              ),
              const SizedBox(height: 25),

              // Name Label
              Text("Name", style: textTheme.bodyMedium),
              const SizedBox(height: 8),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your name",
                  prefixIcon: Icon(Icons.person_outline,
                      color: colorScheme.onPrimaryContainer.withOpacity(0.9)),
                  filled: true,
                  fillColor: colorScheme.background.withOpacity(0.7),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Email Label
              Text("Email", style: textTheme.bodyMedium),
              const SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  prefixIcon: Icon(Icons.alternate_email_outlined,
                      color: colorScheme.onPrimaryContainer.withOpacity(0.9)),
                  filled: true,
                  fillColor: colorScheme.background.withOpacity(0.7),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Phone Label
              Text("Phone Number", style: textTheme.bodyMedium),
              const SizedBox(height: 8),
              TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Enter your phone number",
                  prefixIcon: Icon(Icons.phone_outlined,
                      color: colorScheme.onPrimaryContainer.withOpacity(0.9)),
                  filled: true,
                  fillColor: colorScheme.background.withOpacity(0.7),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              // Save Button
              Center(
                child: PrimaryButton(
                  butName: "Save Changes",
                  butIcon: Icons.save_outlined,
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
